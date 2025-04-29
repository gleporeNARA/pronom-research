#!/usr/bin/env python3

"""
Parses an email into separate replies and attempts to get signatures for each reply.

Todo:
    * does sanitize_name() need to return a flat case name (all uppercase or all lower)?
    * does checking against _titles.titles need to be case*insensitive?
    * work on comments, function docs.
    * make a wrapper function that returns a dict for each reply with the lines,
      sender, and recepients.
    * which functions need to be private?
    * might need to regex a la "[*]{1,0}From:[*]{1,0} " instead of just "From: ", etc. for
      Wiki*type formatting.
    * will this work for all Outlook emails?
    * how to do this for Gmail? There may be a clue in HTML version of Gmail
      (div|blockquote.class=3D"gmail_quote").
    * consider using Levenshtein distance to help determine if there's a likely name match.
"""

### import modules.
import codecs
import re
import _titles


def sanitize_name(name):
    """ Cleans up a person's name by removing:
            - non-alphabetic characters
            - capitalized initials and acronyms (J., MA, CEO, etc.)
            - titles and suffixes (Captain, Dr, Jr, etc.)

        Args:
            name (str): The name to sanitize.

        Returns:
            str: The sanitized name.

        Example:
            >>> sanitize_name("Brigadier General John A. B. C. Smith")
            'John Smith'
    """

    sanitized_name = []
    
    # remove non-alphabetic characters.
    for name_part in name.split():
        name_part = [np for np in name_part if np.isalpha()]
        name_part = "".join(name_part)
        
        # skip if token is all caps.
        if name_part.upper() == name_part:
            continue
        
        # skip if token is a title.
        if name_part in _titles.titles:
            continue

        sanitized_name.append(name_part)

    sanitized_name = " ".join(sanitized_name)
    return sanitized_name


def get_contact(line):
    """ Parses a line containing a name and email address and returns them as separate values
        along with the sanitized name.

    Args:
        line (string): The line from which to extract a name and email address.

    Returns:
        dict: The return value.

    Example:
        >>> get_contact("Poe, Edgar Allan <eapoe@uva.edu>")
        {'name_original': 'Poe, Edgar Allan',
        'name': 'Poe Edgar Allan',
        'address': 'eapoe@uva.edu'}
    """

    # pull apart name and email address.
    match  = re.match(r"(.*)[<\[](.*)[>\]]", line)
    
    # if match, get sanitized name and email address.
    # otherwise, get sanitized name only.
    if match != None:
        name = match[1].strip()
        name_sanitized = sanitize_name(name)
        address = match[2].strip()
        address = address.replace("mailto:", "")
    else:
        name = line
        name_sanitized = sanitize_name(name)
        address = None

    contact = {"name_original": name, "name": name_sanitized, "address": address}
    return contact


def get_replies(message_file, charset=None):
    """ Finds replies within a message and returns a list containing each reply.
    
    Args:
        message_file (str): The email's filename.
        charset (str): The optional codec to use for opening the file.
    
    Returns:
        list: Each item is a reply consisting of a list of lines.
    """

    # place breakpoints for each reply in list. 
    breakpoints = [0]

    # parse message.
    with codecs.open(message_file, "r", encoding=charset) as message:
        message = message.read()
        message = re.sub(r".[-]+[\s]{0,}Original Message[\s]{0,}[-]+\n", "", message,
                  flags=re.I) # remove original message headers.

        lines = message.split("\n")
        
        # get breakpoints for each reply. 
        i = 0
        for line in lines:
            if line[:6] == "From: ":
                breakpoints.append(i)
            i += 1
        
        # split message into list of replies.
        breakpoints.append(len(lines))
        breakpoint_range = range(0, len(breakpoints) -1)
        breakpoint_pairs = [(breakpoints[br], breakpoints[br+1]) for br in breakpoint_range]
        replies = [lines[bp[0]:bp[1]] for bp in breakpoint_pairs]
        return replies


def get_metadata(reply):
    """ Gets sender, recipients, timestamp, and subject metadata values from a reply.
        Also returns number of lines in the reply.
    
        Args:
            reply (list): The list of lines for a given reply.

        Returns:
            dict: The return value.
    """

    # assume values.
    sender = None
    recipients = None
    sent = None
    subject = None
    len_reply = len(reply)

    # collect metadata.
    i = 0
    for line in reply:

        if line[:6] == "From: ":
            sender = get_contact(line[6:])
        elif line[:4] == "To: " or line[:4] == "Cc: ":
            try:
                recipients.append(get_contact(line[4:]))
            except AttributeError:
                recipients = [get_contact(line[4:])]
        elif line[:6] == "Sent: ":
            sent = line[6:]
        elif line[:9] == "Subject: ":
            subject = line[9:]
        
        # stop checking after line 10.
        if i > 9:
            break
        i += 1

    metadata = {"sender": sender, "recipients": recipients, "timestamp": sent,
               "subject": subject, "lines": len_reply}
    return metadata


def get_signature(reply, sender):
    """ Gets signature for a given reply (if exists), signature text and reply text 
        (sans signature).

    Args:
        reply (list): The list of lines for a given reply.
        sender(dict): The get_contact() value for the reply's sender. 

    Returns:
        dict: The return value.
    """

    # assume values.
    has_signature = False
    signature_text = ""
    reply_text = "\n".join(reply).strip()

    # create output dictionary.
    signature_data = {"has_signature": has_signature,
                     "signature_text": signature_text,
                     "reply_text": reply_text}

    if sender == None:
        return signature_data

    # reverse reply.
    reply_reversed = reply[0:]
    reply_reversed.reverse()
    
    # loop through reply backwards; look for signature.
    i = len(reply_reversed)
    for line in reply_reversed:
        
        # sanitize line and check tokens against tokens in sender's name.
        line = sanitize_name(line)
        tokens = line.split()
        found_sender = [t for t in tokens if t.lower() in sender["name"].lower()]
        
        # if 2+ tokens match, assume start of signature.
        if len(tokens) > 1 and found_sender == tokens:
            signature_data["has_signature"] = True
            signature_text = "\n".join(reply[i-1:])
            signature_data["signature_text"] = signature_text.strip()
            reply_text = "\n".join(reply[:i-1])
            signature_data["reply_text"] = reply_text.strip()
            break
        i -= 1

    return signature_data


### TEST.
if __name__ == "__main__":
    
    import json 
    
    # get all replies within email.
    MS = get_replies("sample_email.txt")
    
    # for each reply:
    #   - get metadata dict.
    #   - get sender value.
    #   - get signature.
    #   - add signature to metadata key.
    #   - print metadata as JSON.
    for ms in MS:
        md = get_metadata(ms)
        sender = md["sender"]
        sig = get_signature(ms, sender)
        md["get_signature()"] = sig 
        print(json.dumps(md, indent=2))

