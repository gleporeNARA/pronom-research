#!/usr/bin/env python3

def insert_delimiter_line(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    delimiter_line = '*****\n'
    insertion_index = None

    for i in range(len(lines)-1, -1, -1):
        if lines[i].strip() == '</InternalSignature>':
            insertion_index = i + 1
            break

    if insertion_index is not None:
        lines.insert(insertion_index, delimiter_line)

        with open(file_path, 'w') as file:
            file.writelines(lines)
        print(f"Delimiter line inserted successfully in {file_path}")
    else:
        print(f"Failed to find the </InternalSignature> line in {file_path}")


file_path = 'output2.txt'
insert_delimiter_line(file_path)
