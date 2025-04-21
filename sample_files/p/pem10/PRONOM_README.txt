
PEM (Privacy-Enhanced Mail) refers both to the secure email format defined in RFC 1421 and related RFCs, and (much more commonly) to the loosely-defined family of formats inspired by RFC 1421 format. This article is about the whole family of PEM formats. For information specific to the original PEM format, refer to Privacy-Enhanced Mail (RFC 1421).

PEM formats are usually related to encryption, especially public-key encrypted communications. Most of them are not related to email, so calling them Privacy-Enhanced Mail is confusing. Some of the most common formats were apparently invented by the SSLeay/OpenSSL developers.

Format
This section describes PEM format in general, but it has not been confirmed to be correct for every specific PEM format.

A PEM file is plain text. It contain one or more objects, such as certificates or keys, which may not all be the same type. Each object is delimited by lines similar to "-----BEGIN ...-----" and "-----END ...-----". Data that is not between such lines is ignored, and is sometimes used for comments, or for a human-readable dump of the encoded data.

Following the "BEGIN" and "END" keywords is a name (such as "CERTIFICATE") that can be used as an identifier for the type of object.

The data between the delimiter lines starts with an optional email-like header section, followed by base64-encoded payload data. After decoding, the payload data is in DER format.

List of PEM Formats
Identifier	Description and References
CERTIFICATE	PEM encoded certificate (or, rarely, PKCS7 certificate)
CERTIFICATE REQUEST	PKCS10
NEW CERTIFICATE REQUEST	PKCS10
PKCS7	PKCS7 certificate (or maybe some other PKCS7 data)
PKCS #7 SIGNED DATA	PKCS7 certificate (or maybe some other PKCS7 data)
PRIVACY-ENHANCED MESSAGE	Privacy-Enhanced Mail (RFC 1421)
RSA PRIVATE KEY	PEM encoded RSA private key
X509 CRL	Certificate Revocation List
This list is not complete. Some other identifiers (taken from OpenSSL's pem.h file) are: "X509 CERTIFICATE", "CERTIFICATE PAIR", "TRUSTED CERTIFICATE", "ANY PRIVATE KEY", "PUBLIC KEY", "RSA PUBLIC KEY", "DSA PRIVATE KEY", "DSA PUBLIC KEY", "ENCRYPTED PRIVATE KEY", "PRIVATE KEY", "DH PARAMETERS", "SSL SESSION PARAMETERS", "DSA PARAMETERS", "ECDSA PUBLIC KEY", "EC PARAMETERS", "EC PRIVATE KEY", "PARAMETERS", "CMS".



http://fileformats.archiveteam.org/wiki/PEM



https://www.openssl.org/docs/man1.0.2/man1/sess_id.html
