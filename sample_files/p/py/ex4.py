#!/usr/bin/env python3

def insert_text_in_file(source_file, target_file):
    with open(source_file, 'r') as source:
        source_lines = source.readlines()

    with open(target_file, 'r') as target:
        target_lines = target.readlines()

    delimiter_index = next((index for index, line in enumerate(source_lines) if line.strip() == '*****'), None)

    if delimiter_index is not None:
        # Insert text from source file after line 3 in target file
        target_lines = target_lines[:3] + source_lines[:delimiter_index] + target_lines[3:]

        # Insert text from source file three lines from the last line in target file
        target_lines = target_lines[:-2] + source_lines[delimiter_index+1:]

        # Append the additional lines to the end of the target file
        target_lines.extend(['</FileFormatCollection>\n', '</FFSignatureFile>\n'])

        with open(target_file, 'w') as target:
            target.writelines(target_lines)
    else:
        print(f"Delimiter line '*****' not found in {source_file}")


source_file = 'output2.txt'
target_file = 'DROID_SignatureFile_V112.xml'

insert_text_in_file(source_file, target_file)
