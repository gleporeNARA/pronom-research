#!/usr/bin/env python3

values = [
    "02099900",
"03099900",
"892e0d0a",
"04170d0a",
"994e0d0a",
"fcc40d0a",
"fdc40d0a",
"87c60d0a",
"88c60d0a",
"2aeb0d0a",
"2beb0d0a",
"2ded0d0a",
"2eed0d0a",
"3bf20d0a",
"3cf20d0a",
"45f20d0a",
"59f20d0a",
"63f20d0a",
"6df20d0a",
"6ef20d0a",
"77f20d0a",
"81f20d0a",
"8bf20d0a",
"8cf20d0a",
"95f20d0a",
"9ff20d0a",
"a9f20d0a",
"b3f20d0a",
"b4f20d0a",
"c7f20d0a",
"d1f20d0a",
"d2f20d0a",
"dbf20d0a",
"e5f20d0a",
"eff20d0a",
"f9f20d0a",
"03f30d0a",
"04f30d0a",
"b80b0d0a",
"c20b0d0a",
"cc0b0d0a",
"d60b0d0a",
"e00b0d0a",
"ea0b0d0a",
"f40b0d0a",
"f50b0d0a",
"ff0b0d0a",
"090c0d0a",
"130c0d0a",
"1d0c0d0a",
"1f0c0d0a",
"270c0d0a",
"3b0c0d0a",
"450c0d0a",
"4f0c0d0a",
"580c0d0a",
"620c0d0a",
"6c0c0d0a",
"760c0d0a",
"800c0d0a",
"8a0c0d0a",
"940c0d0a",
"9e0c0d0a",
"b20c0d0a",
"bc0c0d0a",
"c60c0d0a",
"d00c0d0a",
"da0c0d0a",
"e40c0d0a",
"ee0c0d0a",
"f80c0d0a",
"020d0d0a",
"0c0d0d0a",
"160d0d0a",
"170d0d0a",
"200d0d0a",
"210d0d0a",
"2a0d0d0a",
"2b0d0d0a",
"2c0d0d0a",
"2d0d0d0a",
"2f0d0d0a",
"300d0d0a",
"310d0d0a",
"320d0d0a",
"330d0d0a",
"3e0d0d0a",
"3f0d0d0a",
"400d0d0a",
"410d0d0a",
"420d0d0a",
"480d0d0a",
"490d0d0a",
"520d0d0a",
"530d0d0a",
"540d0d0a",
"550d0d0a",
"5c0d0d0a",
"5d0d0d0a",
"5e0d0d0a",
"5f0d0d0a",
"600d0d0a",
"610d0d0a"
]

output_file = "output.xml"

with open(output_file, "w") as f:
    f.write('<?xml version="1.0" encoding="UTF-8"?>\n')
    f.write('<FFSignatureFile xmlns="http://www.nationalarchives.gov.uk/pronom/SignatureFile" Version="1" DateCreated="2023-08-14T12:54:14+00:00">\n')
    f.write('  <InternalSignatureCollection>\n')
    
    for index, value in enumerate(values, start=1):
        f.write(f'    <InternalSignature ID="{index}" Specificity="Specific">\n')
        f.write('      <ByteSequence Reference="BOFoffset">\n')
        f.write('        <SubSequence MinFragLength="0" Position="1" SubSeqMaxOffset="0" SubSeqMinOffset="0">\n')
        f.write(f'          <Sequence>{value}</Sequence>\n')
        f.write('          <DefaultShift>5</DefaultShift>\n')
        
        f.write(f'          <Shift Byte="{value[0:2]}">4</Shift>\n')
        f.write(f'          <Shift Byte="{value[2:4]}">3</Shift>\n')
        f.write(f'          <Shift Byte="{value[4:6]}">2</Shift>\n')
        f.write(f'          <Shift Byte="{value[6:8]}">1</Shift>\n')
        
        f.write('        </SubSequence>\n')
        f.write('      </ByteSequence>\n')
        f.write('    </InternalSignature>\n')
    
    f.write('  </InternalSignatureCollection>\n')
    f.write('</FFSignatureFile>\n')
print(f"XML snippets generated and saved to '{output_file}'.")
