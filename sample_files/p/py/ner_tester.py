#!/usr/bin/env python3

""" This script creates a report file for NER tagging of test data. """

# import modules.
import sys; sys.path.append("../../")
import codecs
import logging
import os
from glob import glob
from tomes_tool.lib.text_to_nlp import TextToNLP


# enable logging.
logging.basicConfig(level=logging.WARNING)
logger = logging.getLogger(__name__)
logger.setLevel("INFO")


def testDataFile(test_file, results_file):
    """ Tests NER patterns in @test_file and writes results to @results_file.
    
    Args:
        - test_file (str): The filepath with test data (one phrase per line).
        - results_file (str): The filepath to which to write the test results.
    
    Returns:
        None

    Raises:
        FileNotFoundError: If @test_file doesn't exist.
        FileExistsError: If @results_file already exists.
    """

    # test is @test_file exists.
    if not os.path.isfile(test_file):
        err = ("'{}' doesn't exists.".format(test_file))
        logger.error(err)
        raise FileNotFoundError(err)

    # test if @results_file already exists.
    if os.path.isfile(results_file):
        err = ("'{}' already exists.".format(results_file))
        logger.error(err)
        logger.warning("Delete or rename: {}".format(results_file))
        raise FileExistsError(err)
    else:
        logger.info("Creating new results file: {}".format(results_file))
        results_file = open(results_file, "w", encoding="utf-8")

    # read @test_file.
    logger.info("Testing data in: {}".format(test_file))    
    with open(test_file, encoding="utf-8") as df:
        test_data = df.read().split("\n")

    # create tagger instance.
    t2n = TextToNLP()

    # get NER tags for each line in @test_file; write results row.
    line_num = 0
    tested_lines = 0
    for line in test_data:
    
        line_num += 1

        # deal with blank and comment lines.
        if line == "":
            continue
        elif line[0] == "#":
            logger.info("Line {} is a non-test line.".format(line_num))
            results_file.write(line + "\n")
            continue

        logger.info("Testing line: {}".format(line_num))
        
        # get NER tags as string.
        results = ["\t"]
        for ner in t2n.get_NER(line):
            text, tag, ws = ner
            results.append(text + "\t" + tag)
        results = "\n\t".join(results)

        # write test @results_file.
        results_file.write(line)
        results_file.write("\n")
        results_file.write(results)
        results_file.write("\n" * 3)

        tested_lines += 1

    # close file.
    results_file.close()
    logger.info("Tested {} lines out of {}.".format(tested_lines, line_num))
    return 
        

# CLI.
def main(test_file:"path to test file", 
        results_file:"destination for results file"):
    
    "Creates report file for NER tagging of test data.\
    \nexample: `py -3 ner_tester.py test_file.txt results_file.txt`"

    try:
        results_file = testDataFile(test_file, results_file)
        logging.info("Created results file: {}".format(results_file))
    except Exception as err:
        logging.critical(err)
        sys.exit(err.__repr__())


if __name__ == "__main__":
    
    import plac
    plac.call(main)

