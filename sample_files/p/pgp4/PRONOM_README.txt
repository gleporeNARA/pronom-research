Pretty Good Privacy (PGP) is an encryption system used for both sending encrypted emails and encrypting sensitive files. Since its invention back in 1991, PGP has become the de facto standard for email security.

The popularity of PGP is based on two factors. The first is that the system was originally available as freeware, and so spread rapidly among users who wanted an extra level of security for their email messages. The second is that since PGP uses both symmetric encryption and public-key encryption, it allows users who have never met to send encrypted messages to each other without exchanging private encryption keys.

https://www.varonis.com/blog/pgp-encryption

# Symmetric encryption
0	leshort		0x0d8c
>4	leshort		0x0203
>>2	leshort		0x0204		GPG symmetrically encrypted data (3DES cipher)
>>2	leshort		0x0304		GPG symmetrically encrypted data (CAST5 cipher)
>>2	leshort		0x0404		GPG symmetrically encrypted data (BLOWFISH cipher)
>>2	leshort		0x0704		GPG symmetrically encrypted data (AES cipher)
>>2	leshort		0x0804		GPG symmetrically encrypted data (AES192 cipher)
>>2	leshort		0x0904		GPG symmetrically encrypted data (AES256 cipher)
>>2	leshort		0x0a04		GPG symmetrically encrypted data (TWOFISH cipher)
>>2	leshort		0x0b04		GPG symmetrically encrypted data (CAMELLIA128 cipher)
>>2	leshort		0x0c04		GPG symmetrically encrypted data (CAMELLIA192 cipher)
>>2	leshort		0x0d04		GPG symmetrically encrypted data (CAMELLIA256 cipher)


https://github.com/file/file/blob/8dc5513908381a14981b16a85d59ba054bf4df52/magic/Magdir/gnu#L138
