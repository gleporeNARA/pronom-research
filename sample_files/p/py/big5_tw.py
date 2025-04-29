# Chen Chien-Hsun, modified from Tamito KAJIYAMA's original code. 

import codecs

from encodings.chinesetw import big52utf1, big52utf2, utf2big51, utf2big52

class Codec(codecs.Codec):
    # Unicode to character buffer
    def encode(self, data, errors='strict',
               supported_errors=('strict', 'ignore', 'replace')):
        if errors not in supported_errors:
            raise UnicodeError, "unknown error handling"
        m1 = utf2big51.mapping
        m2 = utf2big52.mapping
        s = ''
        for c in data:
            if c < u'\u0080':
                s = s + c.encode("ascii")
            else:
                if m1.has_key(c):
                    s = s + m1[c]
                elif m2.has_key(c):
                    s = s + m2[c]
                elif errors == 'replace':
                    s = s + '\xa1\x40' # BIG5 IDEOGRAPHIC SPACE
                elif errors == 'strict':
                    raise UnicodeError, "cannot map \\u%04x to BIG5" % ord(c)
        return (s, len(s))
    # character buffer to Unicode
    def decode(self, data, errors='strict',
               supported_errors=('strict', 'ignore', 'replace')):
        if errors not in supported_errors:
            raise UnicodeError, "unknown error handling"
        m1 = big52utf1.mapping
        m2 = big52utf2.mapping
        s = u''
        data = str(data) # character buffer compatible object
        size = len(data)
        p = 0
        while p < size:
            if data[p] < "\x80":
                s = s + unicode(data[p], "ascii")
                p = p + 1
            else:
                c = data[p:p+2]
                p = p + 2
                if m1.has_key(c):
                    s = s + m1[c]
                elif m2.has_key(c):
                    s = s + m2[c]
                elif errors == 'replace':
                    s = s + u'\uFFFD' # REPLACEMENT CHARACTER
                elif errors == 'strict':
                    raise UnicodeError, "cannot map BIG5 \\x%02x%02x to Unicode" % (ord(c[0]), ord(c[1]))
        return (s, p)

class StreamWriter(Codec, codecs.StreamWriter):
    pass

class StreamReader(Codec, codecs.StreamReader):
    def __init__(self, stream, errors='strict'):
        codecs.StreamReader.__init__(self, stream, errors)
        self.data = ''
    def read(self, size=-1):
        if size < 0:
            data = self.data + self.stream.read()
            self.data = ''
        else:
            data = self.data + self.stream.read(size - len(self.data))
            size = len(data)
            p = 0
            while p < size:
                if data[p] < "\x80":
                    p = p + 1
                elif p + 2 <= size:
                    p = p + 2
                else:
                    break
            data, self.data = data[:p], data[p:]
        return self.decode(data)[0]
    def readline(self, size=None):
        if size is None:
            data = self.data + self.stream.readline()
        else:
            data = self.data + self.stream.readline(size - len(self.data))
        self.data = ''
        return self.decode(data)[0]
    def reset(self):
        self.data = ''

### encodings module API

def getregentry():

    return (Codec().encode,Codec().decode,StreamReader,StreamWriter)
