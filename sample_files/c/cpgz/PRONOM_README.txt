OpenSSL is a software library for applications that secure communications over computer networks against eavesdropping or need to identify the party at the other end. It is widely used by Internet servers, including the majority of HTTPS websites.

OpenSSL contains an open-source implementation of the SSL and TLS protocols. The core library, written in the C programming language, implements basic cryptographic functions and provides various utility functions. Wrappers allowing the use of the OpenSSL library in a variety of computer languages are available.

The OpenSSL Software Foundation (OSF) represents the OpenSSL project in most legal capacities including contributor license agreements, managing donations, and so on. OpenSSL Software Services (OSS) also represents the OpenSSL project, for Support Contracts.

OpenSSL is available for most Unix-like operating systems (including Linux, macOS, and BSD) and Microsoft Windows.

https://en.wikipedia.org/wiki/OpenSSL



From man enc:

NAME
   enc - symmetric cipher routines

SYNOPSIS
   openssl enc -ciphername [-in filename] [-out filename] [-pass arg] [-e] [-d] [-a] [-A] [-k password]
   [-kfile filename] [-K key] [-iv IV] [-p] [-P] [-bufsize number] [-nopad] [-debug]

   [...]

  
There's also a bit of overhead from your scheme. Specifying -salt takes your plaintext password and concatenates a random eight byte salt to the message along with a header Salted__ specifying that a salt was used, and these will also be base64 encoded. (The purpose of the salt is to make it less cost-effective for an attacker to pre-compute rainbow tables for common passwords). 


https://security.stackexchange.com/questions/58351/why-does-openssl-enc-aes-256-cbc-a-salt-increase-the-file-size
