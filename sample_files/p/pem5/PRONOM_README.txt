Certificate revocation list file
The certificate revocation list file, crl.pem.

This file contains the certificate revocation lists (CRLs) that the client uses to validate digital certificates, in PEM format. The existence of this file is optional. If this file is not present, no certificate revocation checks are done when you are validating certificates.

File permissions must be set to limit write access to this file.

A correctly formatted crl.pem file must contain one or more sections with the following headers and footers:

-----BEGIN X509 CRL-----
Base 64 ASCII encoded CRL data here
-----END X509 CRL-----


https://www.ibm.com/docs/en/ibm-mq/8.0?topic=management-certificate-revocation-list-file
