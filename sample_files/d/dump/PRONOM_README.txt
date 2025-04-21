PostgreSQL (/ˈpoʊstɡrɛs ˌkjuː ˈɛl/, POHST-gres kyoo el),[13][14] also known as Postgres, is a free and open-source relational database management system (RDBMS) emphasizing extensibility and SQL compliance. It was originally named POSTGRES, referring to its origins as a successor to the Ingres database developed at the University of California, Berkeley.[15][16] In 1996, the project was renamed to PostgreSQL to reflect its support for SQL. After a review in 2007, the development team decided to keep the name PostgreSQL and the alias Postgres.[17]

PostgreSQL features transactions with atomicity, consistency, isolation, durability (ACID) properties, automatically updatable views, materialized views, triggers, foreign keys, and stored procedures.[18] It is designed to handle a range of workloads, from single machines to data warehouses or web services with many concurrent users. It was the default database for macOS Server[19][20][21][22] and is also available for Linux, FreeBSD, OpenBSD, and Windows.



https://en.wikipedia.org/wiki/PostgreSQL

PostgreSQL provides different ways to backup and restore your databases. With PostgreSQL, backups can be full, incremental or continuous, and they can be at logical or filesystem level. Point-in-time recovery is possible from incremental backups. PostgreSQL even supports a feature called timelines, which is a sort of branching history of your backup and restores.

Let’s have a look at the common options for backup and restore.

DUMPING USING PG_DUMP AND PG_DUMPALL
The pg_dump utility can be used to generate a logical dump of a single database. If you need to include global objects (like uses and tablespaces) or dump multiple databases, use pg_dumpall instead.

https://www.opsdash.com/blog/postgresql-backup-restore.html


> > I don't think we need to make any discinction between psql -f mydb.dump,
> > psql < mydb.dump, and whatever | psql. Just check, when noninteractively
> > reading the first line in mainloop.c:MainLoop(), whether it starts with
> > the magic header. That'd also trigger the warning on \i pg_restore_file,
> > but that's hardly a problem.
>
> Done, patch attached.
>
> If psql sees that the first line begins with PGDMP it'll emit:
>
>   The input is a PostgreSQL custom-format dump. Use the pg_restore
>   command-line client to restore this dump to a database.

https://www.postgresql.org/message-id/CAM2%2B6%3DW7QWPe_yuTOKPSJj5%2B3deO9%3DKg6ZHAQV1iv%3D3-ZM529Q%40mail.gmail.com
