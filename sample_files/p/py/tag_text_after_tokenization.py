""" This tests a solution to:

    "If I use an NER tagger that tokenizes a given text, how can I use regular expressions 
    over the non-tokenized text and merge the results with the NER tagger results?"

    Note: there is a major flaw with this (or any other second pass approach). Namely,
    say you have thre tokens: A, B, C ...

    If your NER tool tags both A and B as, say, "PERSON". What do you then do if your regex
    matches on B and C? You don't know that A being a "PERSON" is necessarily dependent on
    being followed by B and vice-versa. So simply re-tagging B and C could invalidate the tag
    of A as "PERSON". The safest thing (rather than write over tags) then might be to have 1
    to 2 tags per token, i.e. a tuple where the first item is your NER tagger's tag and the 
    second item is reserved for your regex-based tags.
"""


def tokenize(text):
    """ This takes the place of the tokenizer or tokenization algorithm used by CoreNLP (or 
    some other NER tagger being used). It returns a list of tokens in @text. """

    tokens = text.split()
    return tokens


def lookup_tag(regex_pattern):
    """ For each @regex_pattern we need a dict so we can lookup the associated NER tag. """

    lookup = {"[H|h]ello world": "GREETING"}
    try:
        return lookup[regex_pattern]
    except KeyError:
        return None


def get_map(tokens):
    """ Returns a dictionary with each unique token in @tokens as keys. The values are lists:
    the index of the position/s in global @TEXT that the token is found. """

    token_index = enumerate(tokens)
    token_map = {}
    for k, v in token_index:
        if v in token_map.keys():
            token_map[v].append(k)
        else:
            token_map[v] = [k]

    return token_map


def get_combos(regex_result):
    """ @regex_result: the regex result obtained from running a regex over global @TEXT. """
    
    # we need this in order to find if/where it exists in global @TEXT_TOKENS.
    regex_result_tokens = tokenize(regex_result)

    # get position of first token in @regex_result_tokens (i.e. the tokenized regex results)
    # and the total number of tokens in the regex results.
    try:
        finds = TEXT_MAP[regex_result_tokens[0]]
        total_tokens = len(regex_result_tokens)
    except KeyError:
        return None

    # make a list of tokens sets in global @TEXT_TOKENS that match @regex_result_tokens.
    combos = []
    for find in finds:
        combo = {"tokens": TEXT_TOKENS[find:find + total_tokens], "start": find}
        if combo["tokens"] == regex_result_tokens:
            combos.append(combo)

    return combos


# sample text and regex.
TEXT = "... Hello world ... hello world again!"

# let's assume we've tokenized @TEXT with our NER tagger.
TEXT_TOKENS = tokenize(TEXT)

# now let's get a map of the tokens.
TEXT_MAP = get_map(TEXT_TOKENS)

# this is the regex we want to run over @TEXT.
PATTERN = "[H|h]ello world"

# test functions.
print(tokenize(TEXT))
print(lookup_tag(PATTERN))
print(get_map(tokenize(TEXT)))
print(get_combos("Hello world"))
print()

# example usage.
import re

# let's get the associated NER tag for the regex @PATTERN.
ner_tag = lookup_tag(PATTERN)

# run the regex.
matches = re.findall(PATTERN, TEXT)
print("Found {} matches.".format(len(matches)))

# for each match, get the exact tokens in @TEXT and their starting position in @TEXT.
for match in matches:
    results = get_combos(match)
    for result in results:
        message = "Tagging each token in {} with '{}'".format(result, ner_tag)
        print(message)
        concatenated = " ".join(result["tokens"])
        message = "Concatenated tokens: {}".format(concatenated)
        print(message)

# fin.

