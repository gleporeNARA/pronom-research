#!/usr/bin/env python3
import os
import sys
from collections import Counter
from itertools import product
from tabulate import tabulate

def byte_repr(b):
    if b == 0x20: return r'\ '
    if b == 0x5C: return r'\\'
    if 32 <= b <= 126: return chr(b)
    return f'\\x{b:02X}'

def bytes_to_sig(bseq):
    parts = [byte_repr(b) for b in bseq]
    if any(p is None for p in parts): return None
    return ''.join(parts)

def generate_mask(byte_hex: str, count: int, occ: list) -> str:
    if len(occ) == 1 and count == occ[0][1]:
        return f"{occ[0][0]:02X}"
    if len(occ) <= 12:
        vals = "|".join(f"{b:02X}" for b, _ in occ)
        return f"({vals})" if len(occ) > 1 else vals
    return "??"

fmt = input("Output [pronom/file] (default file): ").strip().lower()
if fmt not in ("pronom", "file"): fmt = "file"
title = ""
if fmt == "file":
    title = input("Enter signature title: ").strip() or "Unknown"
ext = input("Enter file extension (or leave empty): ").strip().lower()
d = input("Enter directory (default .): ").strip() or "."
b = input("Enter number of bytes to scan (default 20): ").strip()
n = int(b) if b.isdigit() else 20

files = [f for f in sorted(os.listdir(d))
         if os.path.isfile(os.path.join(d, f))
         and "-signature-file.xml" not in f
         and (not ext or f.lower().endswith(ext))]
if not files:
    sys.exit("No matching files found.")

for fn in files:
    print(f"\nFile: {fn}")
    data = open(os.path.join(d, fn), "rb").read(n)
    hexs = [f"{b:02X}" for b in data]
    chs = [chr(b) if 32 <= b <= 126 else "." for b in data]
    tbl = [["Off","Hex","Chr"]] + list(zip(range(1, len(data)+1), hexs, chs))
    print(tabulate(list(zip(*tbl)), tablefmt="fancy_grid"))

rows = [list(open(os.path.join(d, fn), "rb").read(n)) + [None]*max(0, n-len(open(os.path.join(d, fn),"rb").read(n))) for fn in files]
occ = [Counter(r[i] for r in rows if r[i] is not None) for i in range(n)]

mask = ""
for i in range(n):
    counts = occ[i].most_common()
    if not counts: break
    byte_val, cnt = counts[0]
    mask += generate_mask(f"{byte_val:02X}", cnt, counts)

if fmt == "pronom":
    print(f"\nPRONOM signature: {mask}")
else:
    good = [i for i in range(n) if len(occ[i]) in (1,2)]
    clusters, curr = [], []
    for i in sorted(good):
        if not curr or i == curr[-1] + 1:
            curr.append(i)
        else:
            clusters.append(curr); curr = [i]
    if curr: clusters.append(curr)
    cluster_seqs = []
    for cl in clusters:
        seqs = set()
        for r in rows:
            vals = [r[i] for i in cl]
            if None in vals: continue
            seqs.add(tuple(vals))
        if len(seqs) <= 2:
            cluster_seqs.append((cl, list(seqs)))
    if not cluster_seqs:
        sys.exit("No clusters with ≤2 values found.")
    combos = product(*(seqs for _, seqs in cluster_seqs))
    out = [f"# {title}"]
    total = len(cluster_seqs)
    for combo in combos:
        for idx, ((cl, _), seq_vals) in enumerate(zip(cluster_seqs, combo)):
            sig = bytes_to_sig(seq_vals)
            prefix = ">" * idx
            if idx < total - 1:
                out.append(f"{prefix}{cl[0]}\tstring\t{sig}")
            else:
                out.append(f"{prefix}{cl[0]}\tstring\t{sig}\t{title}")
    print("\n" + "\n".join(out))
