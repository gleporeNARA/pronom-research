Pretty Good Privacy (PGP) is an encryption program that provides cryptographic privacy and authentication for data communication. PGP is used for signing, encrypting, and decrypting texts, e-mails, files, directories, and whole disk partitions and to increase the security of e-mail communications. Phil Zimmermann developed PGP in 1991.[3]

PGP and similar software follow the OpenPGP, an open standard of PGP encryption software, standard (RFC 4880) for encrypting and decrypting data.

http://en.wikipedia.org/wiki/Pretty_Good_Privacy

An Armor Header Line consists of the appropriate header line text
   surrounded by five (5) dashes ('-', 0x2D) on either side of the
   header line text.  The header line text is chosen based upon the type
   of data that is being encoded in Armor, and how it is being encoded.
   Header line texts include the following strings:



Callas, et al               Standards Track                    [Page 54]

RFC 4880                 OpenPGP Message Format            November 2007


   BEGIN PGP MESSAGE
       Used for signed, encrypted, or compressed files.

   BEGIN PGP PUBLIC KEY BLOCK
       Used for armoring public keys.

   BEGIN PGP PRIVATE KEY BLOCK
       Used for armoring private keys.

   BEGIN PGP MESSAGE, PART X/Y
       Used for multi-part messages, where the armor is split amongst Y
       parts, and this is the Xth part out of Y.

   BEGIN PGP MESSAGE, PART X
       Used for multi-part messages, where this is the Xth part of an
       unspecified number of parts.  Requires the MESSAGE-ID Armor
       Header to be used.

   BEGIN PGP SIGNATURE
       Used for detached signatures, OpenPGP/MIME signatures, and
       cleartext signatures.  Note that PGP 2.x uses BEGIN PGP MESSAGE
       for detached signatures.
       
https://datatracker.ietf.org/doc/html/rfc4880
