��    a      $  �   ,      8  R   9     �  
   �  -   �  �   �  �   o	     
    ,
  J   L  5   �  J   �  6     P   O  C   �  :   �  4     B   T  H   �  >   �  9     3   Y  ?   �  /   �  -   �  E   +  y   q  (   �  7     (   L  3   u  '   �  5   �  -     -   5  /   c  "   �  6   �  �   �  0   �  $   �  �   �  ~   ~  1   �     /  J   M  �   �     `  D   s  -   �  !   �  4     ,   =     j     �     �     �     �     �  ;   	  9   E  �     >     0  O  u   �  q   �  f   h  &   �     �     �  &     0   4  )   e  #   �  "   �  (   �  !   �  %   !  !   G     i     �     �      �     �  -   �  2   &  0   Y     �     �     �     �     �  &   �  %        >  +   T  !   �    �  c   �           :   5   F   �   |   �   *!     �!  =  "  w   L#  4   �#  ~   �#  ;   x$  ^   �$  w   %  F   �%  J   �%  ;   &  q   Y&  J   �&  =   '  >   T'  I   �'  9   �'  <   (  V   T(  �   �(  2   k)  ?   �)  .   �)  A   *  /   O*  A   *  9   �*  :   �*  F   6+  ,   }+  L   �+  �   �+  C   �,  8   -  �   I-  �   �-  C   x.  !   �.  i   �.  �   H/      50  u   V0  ;   �0  0   1  C   91  /   }1  "   �1     �1  8   �1  (   $2     M2     l2  D   �2  A   �2  �   3  Q   �3  �  �3  �   �5  �   96  w   �6  .   57     d7     m7  4   z7  8   �7  1   �7  %   8  '   @8  0   h8  '   �8  +   �8  *   �8     9     59      T9  $   u9     �9  ;   �9  I   �9  8   >:     w:     �:      �:     �:     �:  8   �:  7   1;  "   i;  9   �;  8   �;            ?   U      W          V   &           
   R       Y   =   C       F   .   Q      \   <   ,   "      2   K               M      	             [   6   )       H                        $   `   :       G      ^      L              -      ]   7           S   /           3       (            5              a   D       X   +              9   P   #   E   >   N           A   T   J      %   8   ;           B   _                  @   Z   I                  O   *       1   4   0   !      '    
If the data directory is not specified, the environment variable PGDATA
is used.
 
Less commonly used options:
 
Options:
 
Report bugs to <pgsql-bugs@postgresql.org>.
 
Success. You can now start the database server using:

    %s%s%s%spostmaster -D %s%s%s
or
    %s%s%s%spg_ctl -D %s%s%s -l logfile start

 
WARNING: enabling "trust" authentication for local connections
You can change this by editing pg_hba.conf or using the -A option the
next time you run initdb.
   %s [OPTION]... [DATADIR]
   --lc-collate, --lc-ctype, --lc-messages=LOCALE
  --lc-monetary, --lc-numeric, --lc-time=LOCALE
                            initialize database cluster with given locale
                            in the respective category (default taken from
                            environment)
   --locale=LOCALE           initialize database cluster with given locale
   --no-locale               equivalent to --locale=C
   --pwfile=FILE             read password for the new superuser from file
   -?, --help                show this help, then exit
   -A, --auth=METHOD         default authentication method for local connections
   -E, --encoding=ENCODING   set default encoding for new databases
   -L DIRECTORY              where to find the input files
   -U, --username=NAME       database superuser name
   -V, --version             output version information, then exit
   -W, --pwprompt            prompt for a password for the new superuser
   -d, --debug               generate lots of debugging output
   -n, --noclean             do not clean up after errors
   -s, --show                show internal settings
  [-D, --pgdata=]DATADIR     location for this database cluster
 %s initializes a PostgreSQL database cluster.

 %s: "%s" is not a valid server encoding name
 %s: The password file was not generated. Please report this problem.
 %s: cannot be run as root
Please log in (using, e.g., "su") as the (unprivileged) user that will
own the server process.
 %s: could not access directory "%s": %s
 %s: could not change permissions of directory "%s": %s
 %s: could not create directory "%s": %s
 %s: could not determine valid short version string
 %s: could not execute command "%s": %s
 %s: could not find suitable encoding for locale "%s"
 %s: could not open file "%s" for reading: %s
 %s: could not open file "%s" for writing: %s
 %s: could not read password from file "%s": %s
 %s: could not write file "%s": %s
 %s: data directory "%s" not removed at user's request
 %s: directory "%s" exists but is not empty
If you want to create a new database system, either remove or empty
the directory "%s" or run %s
with an argument other than "%s".
 %s: failed to remove contents of data directory
 %s: failed to remove data directory
 %s: file "%s" does not exist
This means you have a corrupted installation or identified
the wrong directory with the invocation option -L.
 %s: input file "%s" does not belong to PostgreSQL %s
Check your installation or specify the correct path using the option -L.
 %s: input file location must be an absolute path
 %s: invalid locale name "%s"
 %s: must specify a password for the superuser to enable %s authentication
 %s: no data directory specified
You must identify the directory where the data for this database system
will reside.  Do this with either the invocation option -D or the
environment variable PGDATA.
 %s: out of memory
 %s: password prompt and password file may not be specified together
 %s: removing contents of data directory "%s"
 %s: removing data directory "%s"
 %s: too many command-line arguments (first is "%s")
 %s: unrecognized authentication method "%s"
 %s: warning: encoding mismatch
 Enter it again:  Enter new superuser password:  Passwords didn't match.
 Rerun %s with the -E option.
 Running in debug mode.
 Running in noclean mode.  Mistakes will not be cleaned up.
 The database cluster will be initialized with locale %s.
 The database cluster will be initialized with locales
  COLLATE:  %s
  CTYPE:    %s
  MESSAGES: %s
  MONETARY: %s
  NUMERIC:  %s
  TIME:     %s
 The default database encoding has accordingly been set to %s.
 The encoding you selected (%s) and the encoding that the selected
locale uses (%s) are not known to match.  This may lead to
misbehavior in various character string processing functions.  To fix
this situation, rerun %s and either do not specify an encoding
explicitly, or choose a matching combination.
 The files belonging to this database system will be owned by user "%s".
This user must also own the server process.

 The program "postgres" is needed by %s but was not found in the
same directory as "%s".
Check your installation.
 The program "postgres" was found by "%s"
but was not the same version as %s.
Check your installation.
 Try "%s --help" for more information.
 Usage:
 caught signal
 child process exited with exit code %d child process exited with unrecognized status %d child process was terminated by signal %d copying template1 to template0 ...  could not change directory to "%s" could not identify current directory: %s could not read symbolic link "%s" could not write to child process: %s
 creating configuration files ...  creating conversions ...  creating directory %s ...  creating directory %s/%s ...  creating information schema ...  creating system views ...  creating template1 database in %s/base/1 ...  enabling unlimited row size for system tables ...  fixing permissions on existing directory %s ...  initializing pg_depend ...  initializing pg_shadow ...  loading pg_description ...  ok
 out of memory
 selecting default max_connections ...  selecting default shared_buffers ...  setting password ...  setting privileges on built-in objects ...  vacuuming database template1 ...  Project-Id-Version: initdb-fr
POT-Creation-Date: 2004-12-13 19:06+0000
PO-Revision-Date: 2004-12-13 22:11+0100
Last-Translator: 
Language-Team:  <fr@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.9.1
 
Si le r�pertoire des donn�es n'est pas sp�cifi�, la variable d'environnement
PGDATA est utilis�e.
 
Options moins utilis�es :
 
Options :
 
Rapportez les bogues � <pgsql-bugs@postgresql.org>.
 
Succ�s. Vous pouvez maintenant lancer le serveur de bases de donn�es en utilisant:

    %s%s%s%spostmaster -D %s%s%s
ou
    %s%s%s%spg_ctl -D %s%s%s -l journaltrace start

 
ATTENTION : active l'authentification �trust� pour les connexions locales.
Vous pouvez modifier ceci en �ditant pg_hba.conf ou en utilisant l'option -A la prochaine fois que vous lancez initdb.
   %s [OPTION]... [REP_DONNEES]
   --lc-collate, --lc-ctype, --lc-messages=LOCALE
  --lc-monetary, --lc-numeric, --lc-time=LOCALE
                            initialise le groupe de bases de donn�es avec la
                            locale pr�cis�e dans la cat�gorie respective
                            (prise, par d�faut, dans l'environnement)
   --locale=LOCALE           initialise le groupe de bases de donn�es avec la
                            locale donn�e
   --no-locale               �quivalent � --locale=C
   --pwfile=nomfichier       lit le mot de passe du nouveau superutilisateur
                            � partir d'un fichier
   -?, --help                affiche cette aide puis quitte
   -A, --auth=M�THODE        m�thode d'authentification par d�faut pour les connexions locales
   -E, --encoding=CODAGE     initialise le codage par d�faut des nouvelles
                            bases de donn�es
   -L DIRECTORY              indique o� trouver les fichiers d'entr�es
   -U, --username=NOM        nom du superutilisateur de la base de donn�es
   -V, --version             affiche la version puis quitte
   -W, --pwprompt            demande un mot de passe pour le nouveau
                            superutilisateur
   -d, --debug               g�n�re un grand nombre de traces de d�boguage
   -n, --noclean             ne nettoie pas apr�s des erreurs
   -s, --show                affiche les param�trages internes
  [-D, --pgdata=]REP_DONNEES emplacement de ce groupe de bases de donn�es
 %s initialise un groupe de bases de donn�es PostgreSQL.

 %s : �%s� n'est pas un nom de codage valide pour le serveur
 %s : Le fichier des mots de passe n'a pas �t� g�n�r�. Merci de rapporter ce probl�me.
 %s : impossible de se lancer en tant qu'utilisateur root
Merci de vous connecter (en utilisant, par exemple, �su�) en tant qu'utilisateur non privil�gi� et propri�taire du processus serveur.
 %s : impossible d'acc�der au r�pertoire �%s� : %s
 %s : impossible de modifier les droits du r�pertoire �%s� : %s
 %s : n'a pas pu cr�er le r�pertoire �%s� : %s
 %s : impossible de d�terminer la cha�ne valide de version courte
 %s : n'a pas pu ex�cuter la commande �%s� : %s
 %s : impossible de trouver le codage ad�quat pour la locale �%s�
 %s : impossible d'ouvrir le fichier �%s� en lecture : %s
 %s : impossible d'ouvrir le fichier �%s� en �criture : %s
 %s : impossible de lire le mot de passe � partir du fichier �%s� : %s
 %s : n'a pas pu �crire le fichier �%s� : %s
 %s : r�pertoire des donn�es �%s� non supprim� � la demande de l'utilisateur
 %s: le r�pertoire �%s� existe mais n'est pas vide
Si vous voulez cr�er un nouveau syst�me de bases de donn�es,
soit vous supprimez ou videz le r�pertoire �%s�
soit vous lancez %s avec un argument autre que �%s�.
 %s : a �chou� lors de la suppression du contenu du r�pertoire data
 %s : a �chou� lors de la suppression du r�pertoire data
 %s : le fichier �%s� n'existe pas
Cela signifie que vous avez une installation corrompue ou que vous avez
identifi� le mauvais r�pertoire avec l'option -L.
 %s : Le fichier d'entr�es �%s� n'appartient pas � PostgreSQL %s
V�rifiez votre installation ou sp�cifiez le bon chemin en utilisant l'option -L.
 %s : l'emplacement du fichier d'entr�es doit �tre un chemin absolu
 %s : nom de locale invalide �%s�
 %s : vous devez sp�cifier un mot de passe pour que le superutilisateur active l'authentification pour %s
 %s: aucun r�pertoire de donn�es sp�cifi�
Vous devez identifier le r�pertoire o� r�sideront les donn�es pour ce syst�me
de bases de donn�es. Faites-le soit en ajoutant l'option -D soit en
initialisant la variable d'environnement PGDATA.
 %s : espace m�moire insuffisant
 %s : les options d'invite du mot de passe et de fichier de mot de passe ne peuvent pas �tre sp�cifi�es en m�me temps
 %s : suppression du contenu du r�pertoire des donn�es �%s�
 %s : suppression du r�pertoire des donn�es �%s�
 %s : trop d'arguments en ligne de commande (le premier �tant �%s�)
 %s : m�thode d'authentification inconnue �%s�.
 %s : attention : codage diff�rent
 Saisissez-le de nouveau :  Saisissez le nouveau mot de passe du superutilisateur :  Les mots de passe ne correspondent pas.
 Relancez %s avec l'option -E.
 Lanc� en mode d�boguage.
 Lanc� en mode �sans nettoyage� Les erreurs ne seront pas nettoy�es.
 Le groupe de bases de donn�es sera initialis� avec la locale %s.
 Le groupe de bases de donn�es sera initialis� avec les locales
  COLLATE:  %s
  CTYPE:    %s
  MESSAGES: %s
  MONETARY: %s
  NUMERIC:  %s
  TIME:     %s
 Le codage de la base de donn�es par d�faut a �t� correctement configur� avec %s.
 Le codage que vous avez s�lectionn� (%s) et le codage que la locale s�lectionn�e
utilise (%s) ne sont pas connus pour leur compatibilit�. Ceci pourrait amener
de mauvais comportements lors des nombreuses fonctions de manipulation
des cha�nes de caract�res. Pour corriger cette situation, lancez de nouveau
%s et soit vous ne sp�cifiez pas de codage explicitement, soit vous choisissez
une combinaison fonctionnelle.
 Les fichiers appartenant � ce syst�me de bases de donn�es doivent appartenir � l'utilisateur �%s�.
Cet utilisateur doit aussi poss�der le processus serveur.

 Le programme �postgres� est n�cessaire � %s mais n'a pas �t� trouv� dans
le m�me r�pertoire que �%s�.
V�rifiez votre installation.
 Le programme �postgres� a �t� trouv� par �%s� mais n'est pas de la m�me version que �%s�.
V�rifiez votre installation.
 Essayez �%s --help� pour plus d'informations.
 Usage :
 signal re�u
 le processus fils a quitt� avec le code de sortie %d le processus fils a quitt� avec un statut %d non reconnu le processus fils a �t� termin� avec le signal %d copie de template1 vers template0...  impossible d'acc�der au r�pertoire �%s� n'a pas pu identifier le r�pertoire courant : %s n'a pas pu lire le lien symbolique �%s� impossible d'�crire au processus fils : %s
 cr�ation des fichiers de configuration...  cr�ation des conversions...  cr�ation du r�pertoire %s ...  cr�ation du r�pertoire %s/%s...  cr�ation du sh�ma d'informations...  cr�ation des vues syst�me...  cr�ation de la base de donn�es template1 dans %s/base/1...  activation de la taille illimit�e des lignes pour les tables syst�mes...  correction des droits sur le r�pertoire existant %s ...  initialisation de pg_depend...  initialisation de pg_shadow...  chargement de pg_description...  ok
 espace m�moire insuffisant
 s�lection de la valeur par d�faut de max_connections...  s�lection de la valeur par d�faut de shared_buffers...  initialisation du mot de passe...  initialisation des privil�ges sur les objets int�gr�s...  lancement du vacuum sur la base de donn�es template1...  