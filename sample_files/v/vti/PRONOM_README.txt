1 Introduction

The FrontPage Server Extensions: Website Management Protocol specifies a set of server extensions that can be used to augment a basic Hypertext Transfer Protocol (HTTP) server. These extensions provide file server functionality similar to Web Distributed Authoring and Versioning Protocol (WebDAV), allowing a website to be presented as a file share. The use of WebDAV is recommended over the FrontPage Server Extensions: Website Management Protocol. For more information about WebDAV, see [MS-WDVME].

The FrontPage Server Extensions: Website Management Protocol uses HTTP version 1.1 (as described in [RFC2616]) as a transport. Requests are specialized HTTP POSTs or GETs, and responses are in HTML, as described in [RFC2854]. Despite the use of HTTP, the protocol is intended to be used by a client program, not by the user directly through a web browser.

The FrontPage Server Extensions: Website Management Protocol is a superset of a smaller protocol known as FrontPage Server Extensions Remote Protocol, as described in [MS-FPSE]. The FrontPage Server Remote Protocol Extensions is the protocol that is used when communicating between Microsoft Windows® clients and Windows servers. The larger protocol is used to perform a wider array of website administration tasks, including theme management, site navigation, and document repository tasks.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

https://docs.microsoft.com/en-us/openspecs/sharepoint_protocols/mc-fpsewm/d73a1041-dfb1-41fc-b899-b4034b156b0f

https://www.google.com/books/edition/_/qqyb5pNPjYUC?hl=en&gbpv=1&pg=PA960&dq=%22FrontPage%22+%22vti_encoding%22
