#!/usr/bin/env python3

def replace_file_format_id(input_file, output_file):
    with open(input_file, 'r') as input_fp, open(output_file, 'w') as output_fp:
        file_format_id = None
        for line in input_fp:
            if line.strip().startswith('<FileFormat ID='):
                file_format_id = line.split('"')[1]  # Extracting the five-digit number
                output_fp.write(line)  # Write the original line to the output file
            elif line.strip().startswith('<InternalSignatureID>') and file_format_id:
                output_fp.write(f'<InternalSignatureID>{file_format_id}</InternalSignatureID>\n')
                file_format_id = None
            else:
                output_fp.write(line)

if __name__ == '__main__':
    input_filename = 'output.txt'
    output_filename = 'output2.txt'
    replace_file_format_id(input_filename, output_filename)
