This document represents an analysis of a real X.509 certificate, byte by byte.

There is a lot of documentation on X.509, ASN.1 and DER. You could even say, too much. If you want to learn what a certificate contains and you have not done it before, it can be intimidating. You don't know where to start and you don't want to spend weeks reading before you can dive into a certificate. I know, I was in that position. That is why I wrote this, so you have a starting point. Also as a reference that I can come back to in a year or two, to refresh my memory.

We take one real certificate (that happens to be Google's) and break it apart to see what it's made of.

References
I cannot possibly write all the details of X.509 and ASN.1. And besides, it has already been done. So I will have to give you pointers to documents on the Net with more information, in case you want to dig deeper.

ASN.1: Wikipedia page is a good starting point: https://en.wikipedia.org/wiki/Abstract_Syntax_Notation_One

X.509 is Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile: https://datatracker.ietf.org/doc/rfc5280/?include_text=1

X.509, ASN.1, BER, DER: A Layman's Guide to a Subset of ASN.1, BER, and DER http://luca.ntop.org/Teaching/Appunti/asn1.html

DER Encoding of ASN.1 types: https://msdn.microsoft.com/en-us/library/windows/desktop/bb648640%28v=vs.85%29.aspx

https://github.com/ajanicij/x509-tutorial/blob/master/x509-analysis.md
