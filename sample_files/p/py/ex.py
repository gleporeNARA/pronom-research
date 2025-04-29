#!/usr/bin/env python3

import os
import xml.etree.ElementTree as ET
counter = 0

def process_xml_file(file_path, internal_signatures, file_formats, file_index):
    try:
        tree = ET.parse(file_path)
        root = tree.getroot()

        ns = {'ns': 'http://www.nationalarchives.gov.uk/pronom/SignatureFile'}

        signatures = root.findall('.//ns:InternalSignature', ns)
        formats = root.findall('.//ns:FileFormat', ns)
        num_elements = min(len(signatures), len(formats))

        for i in range(num_elements):
            signature = signatures[i]
            for elem in signature.iter():
                if '}' in elem.tag:
                    elem.tag = elem.tag.split('}', 1)[1]
            signature.attrib['ID'] = str(file_index + i)
            internal_signature_id = signature.find('.//ns:InternalSignatureID', ns)
            if internal_signature_id is not None:
                internal_signature_id.text = str(file_index + i)
            internal_signatures.append((file_index + i, ET.tostring(signature, encoding='unicode').strip()))

            format = formats[i]
            for elem in format.iter():
                if '}' in elem.tag:
                    elem.tag = elem.tag.split('}', 1)[1]
            format.attrib['ID'] = str(file_index + i)
            file_format_internal_signature_id = format.find('.//ns:InternalSignatureID', ns)
            if file_format_internal_signature_id is not None:
                file_format_internal_signature_id.text = str(file_index + i)
            file_formats.append(ET.tostring(format, encoding='unicode').strip())

        return file_index + num_elements  # Increment file_index for the next XML file

    except ET.ParseError as e:
        print(f'Error parsing XML file: {file_path} ({e})')

    return file_index

def process_directory(directory, output_file_path):
    internal_signatures = []
    file_formats = []
    file_index = 33333
    global counter

    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('file.xml'):
                counter+=1
                file_path = os.path.join(root, file)
                file_index = process_xml_file(file_path, internal_signatures, file_formats, file_index)

    internal_signatures.sort(key=lambda x: x[0])  # Sort InternalSignature elements by ID

    with open(output_file_path, 'w') as output_file:
        for signature in internal_signatures:
            output_file.write(f'{signature[1]}\n')
        for format in file_formats:
            output_file.write(f'{format}\n')

def main():
    directory = './'
    output_file_path = './output.txt'

    process_directory(directory, output_file_path)
    global counter
    print(f'Processed {counter} files. Extraction complete. Results saved to: {output_file_path}')

if __name__ == '__main__':
    main()
