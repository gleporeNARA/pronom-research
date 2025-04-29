#!/usr/bin/env python3

import os
import re
from collections import Counter
import shutil
import jellyfish  # Library for Damerau-Levenshtein distance calculation
from concurrent.futures import ThreadPoolExecutor

def get_hexadecimal_bytes(filename):
    try:
        with open(filename, 'rb') as file:
            bytes_read = file.read(100)
            return bytes_read.hex()
    except (IOError, OSError):
        return None

def calculate_distance(hex1, hex2):
    return jellyfish.damerau_levenshtein_distance(hex1, hex2)

def analyze_directory(directory):
    patterns = Counter()
    file_patterns = {}
    for root, _, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            pattern = get_hexadecimal_bytes(file_path)
            if pattern is None:
                continue
            patterns[pattern] += 1
            if pattern not in file_patterns:
                file_patterns[pattern] = []
            file_patterns[pattern].append(file_path)
    return patterns, file_patterns

def group_by_distance(file_patterns):
    groups = []
    for pattern, files in file_patterns.items():
        added = False
        for group in groups:
            reference_file = group[0][0]
            distance = calculate_distance(get_hexadecimal_bytes(reference_file), pattern)
            if distance <= 10:  # Adjust the threshold as needed
                group.append(files)
                added = True
                break
        if not added:
            groups.append([files])
    return groups


def print_common_patterns(groups):
    sorted_groups = sorted(groups, key=lambda x: len(x), reverse=True)
    for group in sorted_groups:
        if len(group) > 10:
            pattern = get_hexadecimal_bytes(group[0][0])
            print(f"Pattern: {pattern}")
            print(f"Count: {len(group)}")
            ascii_representation = ""
            for byte in bytes.fromhex(pattern):
                ascii_representation += chr(byte) if 32 <= byte <= 126 else '.'
            print(f"ASCII Representation: {ascii_representation}")
            print("Files:")
            for files in group:
                for file in files:
                    hex_bytes = get_hexadecimal_bytes(file)
                    if hex_bytes is None:
                        continue
                    match = re.search(pattern, hex_bytes)
                    if match:
                        offset = match.start() // 2
                        print(f"{file} (Offset: {offset})")
            print()


def move_common_groups(groups):
    move_groups = [group for group in groups if len(group) > 10]
    if not move_groups:
        return
    answer = input("Do you want to move the common groups into new directories? (Yes/No): ")
    if answer.lower() == "yes":
        for i, group in enumerate(move_groups, start=1):
            directory_name = str(i)
            os.makedirs(directory_name, exist_ok=True)
            for files in group:
                for file in files:
                    shutil.move(file, directory_name)

if __name__ == "__main__":
    directory = input("Enter the directory path: ")
    print("Analyzing directory...")
    patterns, file_patterns = analyze_directory(directory)
    print("Grouping files by distance...")
    groups = group_by_distance(file_patterns)
    print("Printing common patterns...")
    print_common_patterns(groups)
    move_common_groups(groups)
