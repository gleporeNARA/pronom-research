Palm OS (also known as Garnet OS) is a discontinued mobile operating system initially developed by Palm, Inc., for personal digital assistants (PDAs) in 1996. Palm OS was designed for ease of use with a touchscreen-based graphical user interface. It is provided with a suite of basic applications for personal information management. Later versions of the OS have been extended to support smartphones. Several other licensees have manufactured devices powered by Palm OS.

Following Palm's purchase of the Palm trademark, the currently licensed version from ACCESS was renamed Garnet OS. In 2007, ACCESS introduced the successor to Garnet OS, called Access Linux Platform; additionally, in 2009, the main licensee of Palm OS, Palm, Inc., switched from Palm OS to webOS for their forthcoming devices.

https://en.wikipedia.org/wiki/Palm_OS

Palm data model
In Palm OS, any file is a database. First off, let me put it clearly: "database" does NOT mean "relational database" nor RDBMS nor that you'll be able to use SQL commands! A Palm database is actually closer to a structured, flexible and mobile binary data file ("binary data file" meaning "similar to a typical .DAT file on a PC"):

it is structured because it has a header that contains information on the database itself, pompously called "metadata" (type, creator, version, backup flag, copy protection flag, read-only flag... )
it is flexible because Palm OS deals with the physical organization of data and provides you with a set of API's for sorting records, changing various record-level attributes (Secret, Busy...), resizing a record...
it is mobile because it offers native support for synchronization: if your mobile application has a desktop buddy (like DateBook, ToDoList, MemoPad) or a Web buddy (like AvantGo) then you'll need to do some extra coding to handle record creations, updates and deletions. You'll also have to develop a conduit that plugs in to HotSync® and does the sync job whenever the user fires HotSync®. Quick example: on Monday, you create Memo#22 in PalmDesktop on your workstation. On Tuesday, using your beloved Palm, you update Memo#4 and delete Memo#8. On Wednesday you (finally) do a HotSync® that will automagically:
copy the new Memo#22 from your workstation to your Palm
update the existing Memo#4 on your workstation so that it reflects the update you made on your Palm
delete Memo#8 from your workstation
There are different kinds of databases:

type DATA is for a database that contains user or system data
type appl is an application
type HACK is a system extension, a.k.a. a hack
type Rsrc is a resource file

http://mobile.eric-poncet.com/palm/tutorial/db.html
