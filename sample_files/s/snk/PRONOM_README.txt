What is a strong name?
A strong name is a .NET assembly name combined with its version number and other information to uniquely identify the assembly. This allows multiple versions of the same assembly to peacefully co-exist in the global assembly cache, where shared assemblies are typically stored.

A strong name consists of five parts:

Simple Name – Usually the name of the file (without the extension) that contains the assembly
Public Key – RSA cryptographic public key that helps verify the assembly’s authenticity
Version – Four-part version number, in the form of Major.Minor.Build.Revision
Culture – Target audience for the assembly, such as “neutral” (default audience), “en-us” (English – United States) or “fr” (France) etc.
Processor Architecture – Defines the assembly’s format, such as MSIL (intermediate language) or x86 (binary for Intel x86 processors)

https://www.csharp411.com/net-assembly-faq-part-3-strong-names-and-signing/


Create and use strong-named assemblies
Article
09/15/2021
3 minutes to read
8 contributors


A strong name consists of the assembly's identity—its simple text name, version number, and culture information (if provided)—plus a public key and a digital signature. It is generated from an assembly file using the corresponding private key. (The assembly file contains the assembly manifest, which contains the names and hashes of all the files that make up the assembly.)


https://docs.microsoft.com/en-us/dotnet/standard/assembly/create-use-strong-named

RSAPUBKEY structure (wincrypt.h)
Article
04/01/2021
2 minutes to read


The RSAPUBKEY structure contains information specific to the particular public key contained in the key BLOB.

Syntax
C++

Copy
typedef struct _RSAPUBKEY {
  DWORD magic;
  DWORD bitlen;
  DWORD pubexp;
} RSAPUBKEY;
Members
magic

Set to RSA1 (0x31415352) for public keys and to RSA2 (0x32415352) for private keys.

https://docs.microsoft.com/en-us/windows/win32/api/wincrypt/ns-wincrypt-rsapubkey
