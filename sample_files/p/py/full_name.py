import nltk

# function start
def extract_entities(text):
    ind = len(text)-7
    sub = text[ind:]
    print(sub)
    output.write('\nPRODID=='+sub+'\n\n')
    for sent in nltk.sent_tokenize(text):
        for chunk in nltk.ne_chunk(nltk.pos_tag(nltk.word_tokenize(sent))):
            if hasattr(chunk, 'label'):
                output.write(chunk.label()+':'+ ' '.join(c[0] for c in chunk.leaves())+'\n')

# function end

# main program
# -*- coding: utf-8 -*-
import sys
import codecs
sys.stdout = codecs.getwriter("iso-8859-1")(sys.stdout, 'xmlcharrefreplace')
if sys.stdout.encoding != 'cp850':
  sys.stdout = codecs.getwriter('cp850')(sys.stdout.buffer, 'strict')
if sys.stderr.encoding != 'cp850':
  sys.stderr = codecs.getwriter('cp850')(sys.stderr.buffer, 'strict')
file = open('testin.txt', 'r')
output = open('testout.txt', 'w')

for line in file:
 if not line : continue
 extract_entities(line)

file.close()
output.close()
