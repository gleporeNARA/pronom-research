��    {      �  �   �      h
  K   i
     �
  ^   �
  
   *  >   5  =   t  -   �     �  #   �       (   8     a  <   ~  9   �  6   �  H   ,  E   u  B   �  6   �  9   5  C   o  9   �  4   �  H   "  ;   k  E   �  :   �  9   (  7   b  4   �  L   �  J     3   g  0   �  ;   �  3     7   <  2   t  :   �  5   �  G     0   `  <   �  M   �  J     G   g  4   �  H   �  E   -  <   s  6   �  I   �  4   1  1   f  ;   �  8   �  5     =   C  8   �  8   �  9   �  /   -  <   ]  #   �  #   �  ?   �  #   "     F  3   f  &   �  5   �  E   �  4   =  D   r     �  *   �  8      6   9  %   p  (   �  (   �  8   �  #   !      E     f  8   �  4   �  $   �       ,   9  ,   f     �     �  #   �  G   �  4   '     \  &   {     �  )   �  7   �     !  +   6     b     s     �     �     �  
   �     �     �  9      >   B   P   �      �   &   �      !  '   
!     2!     4!     7!     9!  X  =!  T   �"     �"  z   #  
   #  F   �#  E   �#  4   $     L$  &   f$     �$  )   �$  "   �$  A   �$  >   8%  ;   w%  R   �%  p   &  M   w&  W   �&  Q   '  v   o'  <   �'  :   #(  [   ^(  A   �(  |   �(  D   y)  ?   �)  D   �)  D   C*  h   �*  l   �*  5   ^+  2   �+  G   �+  P   ,  P   `,  M   �,  J   �,  F   J-  V   �-  C   �-  =   ,.  F   j.  I   �.  F   �.  E   B/  |   �/  Z   0  Y   `0  P   �0  J   1  C   V1  @   �1  8   �1  5   2  2   J2  H   }2  C   �2  /   
3  J   :3  7   �3  S   �3  )   4  +   ;4  H   g4  -   �4  (   �4  :   5  +   B5  X   n5  ^   �5  d   &6  n   �6  3   �6  H   .7  [   w7  R   �7  7   &8  ;   ^8  6   �8  G   �8  8   9  8   R9  5   �9  D   �9  D   :  (   K:  +   t:  :   �:  2   �:  0   ;     ?;  ;   Q;  [   �;  B   �;     ,<  ?   K<  2   �<  D   �<  W   =     [=  H   q=     �=  +   �=  -   �=  4   ,>     a>     e>  *   u>     �>  L   �>  H   ?  Q   K?     �?  .   �?     �?  B   �?     -@     /@     3@     5@            r   X   j              M   A   K   V   {           "   (   ?       )       =   O   T   ,          v      U               >   &   J   !           g             p   	       7          [           Y   x       Z         ;   /   a       E           B   q   2              D   c   P   t   z       '       w   5       R   4   #   1      n   N   :   y   Q   $   .                 u               3       <          o   W                +   S   G   L   %      ^   ]   9           b   6   s   f   I                   m   _      \   `          -   l           0   h       i   k   H   F       *       
   C      @   e         d   8           
By default, a database with the same name as the current user is created.
 
Connection options:
 
If one of -a, -A, -d, -D, and USERNAME is not specified, you will
be prompted interactively.
 
Options:
 
Read the description of the SQL command CLUSTER for details.
 
Read the description of the SQL command VACUUM for details.
 
Report bugs to <pgsql-bugs@postgresql.org>.
   %s [OPTION]... DBNAME
   %s [OPTION]... LANGNAME [DBNAME]
   %s [OPTION]... [DBNAME]
   %s [OPTION]... [DBNAME] [DESCRIPTION]
   %s [OPTION]... [USERNAME]
   --help                          show this help, then exit
   --help                       show this help, then exit
   --help                    show this help, then exit
   --version                       output version information, then exit
   --version                    output version information, then exit
   --version                 output version information, then exit
   -A, --no-adduser          user cannot add new users
   -D, --no-createdb         user cannot create databases
   -D, --tablespace=TABLESPACE  default tablespace for the database
   -E, --encoding=ENCODING      encoding for the database
   -E, --encrypted           encrypt stored password
   -L, --pglib=DIRECTORY     find language interpreter file in DIRECTORY
   -N, --unencrypted         do not encrypt stored password
   -O, --owner=OWNER            database user to own the new database
   -P, --pwprompt            assign a password to new user
   -T, --template=TEMPLATE      template database to copy
   -U, --username=USERNAME      user name to connect as
   -U, --username=USERNAME   user name to connect as
   -U, --username=USERNAME   user name to connect as (not the one to create)
   -U, --username=USERNAME   user name to connect as (not the one to drop)
   -W, --password               prompt for password
   -W, --password            prompt for password
   -W, --password            prompt for password to connect
   -a, --adduser             user can add new users
   -a, --all                       vacuum all databases
   -a, --all                 cluster all databases
   -d, --createdb            user can create new databases
   -d, --dbname=DBNAME             database to vacuum
   -d, --dbname=DBNAME       database from which to remove the language
   -d, --dbname=DBNAME       database to cluster
   -d, --dbname=DBNAME       database to install language in
   -e, --echo                      show the commands being sent to the server
   -e, --echo                   show the commands being sent to the server
   -e, --echo                show the commands being sent to the server
   -f, --full                      do full vacuuming
   -h, --host=HOSTNAME          database server host or socket directory
   -h, --host=HOSTNAME       database server host or socket directory
   -i, --interactive         prompt before deleting anything
   -i, --sysid=SYSID         select sysid for new user
   -l, --list                show a list of currently installed languages
   -p, --port=PORT              database server port
   -p, --port=PORT           database server port
   -q, --quiet                     don't write any messages
   -q, --quiet                  don't write any messages
   -q, --quiet               don't write any messages
   -t, --table='TABLE[(COLUMNS)]'  vacuum specific table only
   -t, --table=TABLE         cluster specific table only
   -v, --verbose                   write a lot of output
   -z, --analyze                   update optimizer hints
 %s cleans and analyzes a PostgreSQL database.

 %s clusters all previously clustered tables in a database.

 %s creates a PostgreSQL database.

 %s creates a new PostgreSQL user.

 %s installs a procedural language into a PostgreSQL database.

 %s removes a PostgreSQL database.

 %s removes a PostgreSQL user.

 %s removes a procedural language from a database.

 %s: "%s" is not a valid encoding name
 %s: cannot cluster a specific table in all databases
 %s: cannot cluster all databases and a specific one at the same time
 %s: cannot vacuum a specific table in all databases
 %s: cannot vacuum all databases and a specific one at the same time
 %s: clustering database "%s"
 %s: clustering of database "%s" failed: %s %s: clustering of table "%s" in database "%s" failed: %s %s: comment creation failed (database was created): %s %s: could not connect to database %s
 %s: could not connect to database %s: %s %s: could not get current user name: %s
 %s: could not obtain information about current user: %s
 %s: creation of new user failed: %s %s: database creation failed: %s %s: database removal failed: %s %s: language "%s" is already installed in database "%s"
 %s: language "%s" is not installed in database "%s"
 %s: language installation failed: %s %s: language removal failed: %s %s: missing required argument database name
 %s: missing required argument language name
 %s: query failed: %s %s: query was: %s
 %s: removal of user "%s" failed: %s %s: still %s functions declared in language "%s"; language not removed
 %s: too many command-line arguments (first is "%s")
 %s: unsupported language "%s"
 %s: user ID must be a positive number
 %s: vacuuming database "%s"
 %s: vacuuming of database "%s" failed: %s %s: vacuuming of table "%s" in database "%s" failed: %s Are you sure? (y/n)  Database "%s" will be permanently removed.
 Enter it again:  Enter name of user to add:  Enter name of user to drop:  Enter password for new user:  Name Password:  Passwords didn't match.
 Procedural Languages Shall the new user be allowed to create databases? (y/n)  Shall the new user be allowed to create more new users? (y/n)  Supported languages are plpgsql, pltcl, pltclu, plperl, plperlu, and plpythonu.
 Trusted? Try "%s --help" for more information.
 Usage:
 User "%s" will be permanently removed.
 n no y yes Project-Id-Version: pgscripts-fr
POT-Creation-Date: 2004-11-16 07:09+0000
PO-Revision-Date: 2004-11-16 09:47+0100
Last-Translator: Guillaume Lelarge <gleu@wanadoo.fr>
Language-Team: FR_fr <pgsql-fr-generale@postgresql.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.9.1
 
Par d�faut, le nom de la base de donn�e cr��e correspond � celui de l'utilisateur.
 
Options de connexion :
 
Si au moins une des options -a, -A, -d, -D et NOMUTILISATEUR n'est pas sp�cifi�,
cela vous sera demand� interactivement.
 
Options:
 
Lire la description de la commande SQL CLUSTER pour plus de d�tails.
 
Lire la description de la commande SQL VACUUM pour plus de d�tails.
 
Indiquez les bogues � <pgsql-bugs@postgresql.org>.
   %s [OPTION]... NOMBASE
   %s [OPTION]... NOMLANGAGE [NOMBASE]
   %s [OPTION]... [NOMBASE]
   %s [OPTION]... [NOMBASE] [DESCRIPTION]
   %s [OPTION]... [NOMUTILISATEUR]
   --help                          affiche cette aide puis quitte
   --help                       affiche cette aide puis quitte
   --help                    affiche cette aide puis quitte
   --version                       affiche les informations de version puis quitte
   --version                    affiche les informations de version,
                                puis quitte
   --version                 affiche les informations de version, puis quitte
   -A, --no-adduser          l'utilisateur ne peut pas ajouter de nouveaux utilisateurs
   -D, --no-createdb         l'utilisateur ne peut pas cr�er des bases de donn�es
   -D, --tablespace=ESPACELOGIQUE  espace logique par d�faut
                                  pour la base de donn�es
   -E, --encoding=CODAGE        codage de la base de donn�es
   -E, --encrypted           crypte le mot de passe stock�
   -L, --pglib=REPERTOIRE    trouve le fichier de l'interpr�teur de langage dans REPERTOIRE
   -N, --unencrypted         ne crypte pas le mot de passe stock�
   -O, --owner=PROPRIETAIRE     nom de l'utilisateur
                               poss�dant cette nouvelle base de donn�es
   -P, --pwprompt            affecte un mot de passe � l'utilisateur
   -T, --template=MODELE        base de donn�es mod�le � copier
   -U, --username=NOMUTILISATEUR nom d'utilisateur pour la connexion
   -U, --username=NOMUTILISATEUR nom d'utilisateur pour la connexion
   -U, --username=NOMUTILISATEUR nom de l'utilisateur par lequel se connecter (et non pas celui � cr�er)
   -U, --username=NOMUTILISATEUR nom de l'utilisateur par lequel se connecter (et non pas celui � supprimer)
   -W, --password               exige un mot de passe
   -W, --password            exige un mot de passe
   -W, --password            demander un mot de passe pour la connexion
   -a, --adduser             l'utilisateur peut ajouter de nouveaux utilisateurs
   -a, --all                       nettoite (vacuum) toutes les bases de donn�es
   -a, --all                 cr�e un cluster pour toutes les bases de donn�es
   -d, --createdb            l'utilisateur peut cr�er des bases de donn�es
   -d, --dbname=NOMBASE            base de donn�es � nettoyer (vacuum)
   -d, --dbname=NOMBASE      base de donn�es � partir de laquelle supprimer le langage
   -d, --dbname=NOMBASE       base de donn�es � int�grer au cluster
   -d, --dbname=NOMBASE      database o� installer le langage
   -e, --echo                affiche les commandes envoy�es au serveur
   -e, --echo                   affiche les commandes envoy�es au serveur
   -e, --echo                affiche les commandes envoy�es au serveur
   -f, --full                      fait un nettoyage (vacuum) complet
   -h, --host=HOTE              h�te du serveur de bases de donn�es
                               ou r�pertoire des sockets
   -h, --host=HOTE           h�te du serveur de bases de donn�es ou r�pertoire des sockets
   -i, --interactive         demande une confirmation avant de supprimer quoi que ce soit
   -i, --sysid=SYSID         indique l'identifiant syst�me du nouvel utilisateur
   -l, --list                affiche une liste des langages d�j� install�s
   -p, --port=PORT              port du serveur de bases de donn�es
   -p, --port=PORT           port du serveur de bases de donn�es
   -q, --quiet                     n'�crit aucun message
   -q, --quiet                  n'�crit aucun message
   -q, --quiet               n'�crit aucun message
   -t, --table='TABLE[(COLONNES)]' nettoie (vacuum) une table sp�cifique
   -t, --table=TABLE         cr�e un cluster pour cette seule table
   -v, --verbose                   mode verbeux
   -z, --analyze                   met � jour les conseils de l'optimiseur
 %s nettoie et analyse une base de donn�es PostgreSQL.

 %s cr�e un cluster de toutes les tables d�j� en cluster pour une base de donn�es.

 %s cr�e une base de donn�es PostgreSQL.

 %s cr�e un nouvel utilisateur PostgreSQL.

 %s installe un langage proc�dural dans une base de donn�es PostgreSQL.

 %s supprime une base de donn�es PostgreSQL.

 %s supprime un utilisateur PostgreSQL.

 %s supprime un langage proc�dural d'une base de donn�es.

 %s: �%s� n'est pas un nom de codage valide
 %s: ne peut pas mettre en cluster une table sp�cifique dans toutes les bases de donn�es
 %s: ne peut pas mettre en cluster toutes les bases de donn�es et une sp�cifique en m�me temps
 %s: ne peut pas lancer la commande vacuum sur une table sp�cifique pour toutes les bases de
donn�es
 %s: ne peut pas lancer la commande vacuum sur toutes les bases de donn�es et sur une sp�cifique
en m�me temps
 %s: cr�ation du cluster de la base de donn�es �%s�
 %s: �chec lors de la cr�ation du cluster de la base de donn�es �%s� : %s %s: �chec lors de la cr�ation du cluster de la table �%s� dans la base de donn�es �%s� : %s %s: �chec lors de la cr�ation du commentaire (la base de donn�es a �t� cr��e) : %s %s: �chec lors de la connexion � la base de donn�es %s
 %s: c�chec lors de la connexion � la base de donn�es %s: %s %s: n'a pas pu r�cup�rer le nom de l'utilisateur : %s
 %s : n'a pas pu obtenir les informations sur l'utilisateur actuel : %s
 %s: �chec lors de la cr�ation du nouvel utilisateur : %s %s: �chec lors de la cr�ation de la base de donn�es : %s %s: �chec de la suppression de la base de donn�es: %s %s : le langage �%s� est d�j� install� pour la base de donn�es �%s�
 %s: le langage �%s� n'est pas install� dans la base de donn�es �%s�
 %s: installation du langage �chou�e : %s %s: �chec de la suppression du langage : %s %s: argument requis du nom de la base de donn�es manquant
 %s: argument du nom du langage requis et manquant
 %s: �chec lors de l'ex�cution de la requ�te : %s %s: requ�te : %s
 %s: �chec lors de la suppression de l'utilisateur �%s� : %s %s: il existe encore les fonctions %s d�clar�es avec le langage �%s�; langage non supprim�
 %s: trop d'arguments en ligne de commande (le premier �tant �%s�)
 %s: langage non support� �%s�
 %s: l'identifiant de l'utilisateur doit �tre un nombre positif
 %s: nettoyage (vacuum) de la base de donn�es �%s�
 %s: �chec lors du nettoyage (vacuum) de la base de donn�es �%s� : %s %s: �chec lors du nettoyage (vacuum) de la table �%s� dans la base de donn�es �%s� : %s Etes vous s�r? (o/n)  La base de donn�es �%s� sera supprim�e sans retour en arri�re possible.
 Entrez-le de nouveau :  Entrez le nom de l'utilisateur � ajouter :  Entrez le nom de l'utilisateur � supprimer :  Entrez le mot de passe pour le nouvel utilisateur :  Nom Mot de passe :  Les mots de passe ne sont pas identiques.
 Langages proc�duraux Le nouvel utilisateur a-t'il le droit de cr�er des bases de donn�es ? (y/n)  Le nouvel utilisateur a-t'il le droit de cr�er des utilisateurs ? (y/n)  Les langages support�s sont plpgsql, pltcl, pltclu, plperl, plperlu etplpythonu.
 Confiance (trusted) ? Essayez �%s --help� pour plus d'informations.
 Usage:
 L'utilisateur �%s� sera supprim� sans retour en arri�re possible.
 n non o oui 