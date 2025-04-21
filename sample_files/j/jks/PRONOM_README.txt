A Java KeyStore (JKS) is a repository of security certificates – either authorization certificates or public key certificates – plus corresponding private keys, used for instance in TLS encryption.

In IBM WebSphere Application Server and Oracle WebLogic Server, a file with extension jks serves as a keystore.

The Java Development Kit maintains a CA keystore file named cacerts in folder jre/lib/security. JDKs provide a tool named keytool[1] to manipulate the keystore. keytool has no functionality to extract the private key out of the keystore, but this is possible with third-party tools like jksExportKey, CERTivity,[2] Portecle[3] and KeyStore Explorer.[4]

https://en.wikipedia.org/wiki/Java_KeyStore


MAGIC_NUMBER_JKS = b4.pack(0xFEEDFEED)

https://pyjks.readthedocs.io/en/latest/_modules/jks/jks.html
