#!/usr/bin/env python3

# import modules.
import logging
import os
import plac
import sys
from lxml import etree


# enable logging.
logging.basicConfig(level=logging.WARNING)
logger = logging.getLogger(__name__)
logger.setLevel("INFO")

# establish XML header/footer.
HEADER = """<?xml version='1.0' encoding='UTF-8'?>
<Account xmlns="http://www.archives.ncdcr.gov/mail-account"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://www.history.ncdcr.gov/SHRAB/ar/emailpreservation/mail-account/mail-account.xsd">
<GlobalId>EXPORTED_MESSAGES</GlobalId>
<Folder>
"""
FOOTER = "</Folder></Account>"


def export_message(eaxs_file, output_file, message_ids):
    """ Exports a <Message> element from a given EAXS or tagged EAXS file and writes the 
    content to @output_file. Wraps the message in a valid EAXS structure.

    Args:
        - eaxs_file (str): The EAXS file from which to extract a <Message> element.
        - output_file (str): The file in which to write the extracted message.
        - message_ids (list): A list of <MessageId> values OR the position of the messages to
        extract. Note, "1" is the first message in @eaxs.

    Returns:
        int: The return value.
        The number of messages that were found.

    Raises:
        FileExistsError: If @output_file already exists.
    """

    # test if @output_file exists; if not, open @output_file.
    if os.path.isfile(output_file):
        msg = "File '{}' already exists.".format(output_file)
        raise FileExistsError(msg)
    else:
        xfile = open(output_file, "w", encoding="utf-8")
        xfile.write(HEADER)

    # make sure all items are unique and are strings.
    message_ids = list(set(message_ids))
    message_ids = [str(i) for i in message_ids]
    
    # loop through @eaxs_file, print the desired <Message> elements to @output_file.
    i = 0
    total_found = 0

    for event, element in etree.iterparse(eaxs_file, huge_tree=True, strip_cdata=False):
        if element.tag == "{http://www.archives.ncdcr.gov/mail-account}MessageId":
            i += 1
            if element.text in message_ids or str(i) in message_ids:
                total_found += 1
                message = element.getparent()
                xfile.write(etree.tostring(message).decode(encoding="utf-8"))
            if total_found == len(message_ids):
                break
        element.clear()
    
    # close XML.
    xfile.write(FOOTER)
    xfile.close()

    # delete @output_file if no messages found.
    if total_found == 0:
        os.remove(output_file)

    return total_found


def main(eaxs_file:"any EAXS file", 
        output_file:"output file", 
        message_ids:"comma-delimited list of <MessageID> values OR message positions"):
    
    "Exports a single <Message> element from an EAXS or tagged EAXS file.\
    \nexample: `py -3 export_message.py myEAXS.xml myEAXS__firstMessage.xml \"1,2\"` "

    try:
        message_ids = message_ids.split(",")
        results = export_message(eaxs_file, output_file, message_ids)
        logging.info("Total messages found: {}".format(results))
        sys.exit()
    except Exception as err:
        logging.critical(err)
        sys.exit(err.__repr__())


if __name__ == "__main__":
    plac.call(main)

