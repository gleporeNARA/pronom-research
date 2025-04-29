#!/usr/bin/env python3

import re

def process_output_file():
    file_path = "output2.txt"
    with open(file_path, 'r') as file:
        content = file.readlines()

    #print("Original content:")
    #print_content(content)

    new_content = process_output_content(content)

    #print("\nModified content:")
    #print_content(new_content)

    with open(file_path, 'w') as file:
        file.writelines(new_content)

def process_output_content(content):
    pattern = r'<FileFormat ID="(.*?)" .*? PUID="(.*?)"'
    for i in range(len(content)):
        match = re.search(pattern, content[i])
        if match:
            file_format_id = match.group(1)
            puid_value = match.group(2)
            if re.match(r'(dev/\d+|fmt/\d+|x-fmt/\d+)', puid_value):
                new_puid_value = "lepore/" + file_format_id
                content[i] = re.sub(r'PUID="' + puid_value + '"', 'PUID="' + new_puid_value + '"', content[i])

    return content

def print_content(content):
    for line in content:
        print(line.rstrip())

# Example usage
process_output_file()
