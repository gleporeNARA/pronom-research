:userdoc.

.im src\common.ipf

.*-------------------------------------------------------------------------
.*fold00.*About the program

:h1 id=about res=1000.· propos de ce programme
:fn id=mp3.
:p.Le format MP3 est un format d'encodage de donn‚es audio (chansons,
morceaux de musiques, etc.) qui permet au son d'ˆtre cod‚ en trŠs peu
d'octets (le niveau de compression est trŠs ‚lev‚).
:efn.

:fn id=tag.
:p.Au fichier MP3 peut ˆtre attach‚ un "tag ID3", qui est un ensemble de
donn‚es ajout‚es … la fin du fichier. Il renferme un certain nombre
d'informations additionnelles … propos des donn‚es audio&colon. le titre,
l'artiste, l'album, l'ann‚e, des remarques, le genre (le type de musique) et
le num‚ro de piste (ID3 v1.1). Ces informations sont affich‚es par bon
nombre de lecteurs MP3.
:efn.

.*-------------------------------------------------------------------------

:artwork name='src/data/minta.bmp' align=center.
:p.Attention&colon. This version of the documentation may be outdated or
incomplete. If you think you missed something, see the English or German
version!

:p.Ce programme affiche des informations sur les fichiers
:link refid=mp3 reftype=fn.MP3:elink. et vous permet de leur attacher des
:link refid=tag reftype=fn.informations (ou 'tags') ID3:elink..

:p.&progname. vous autorise … travailler sur un seul fichier comme sur
plusieurs, et vous permet une ‚dition ais‚e des informations de multiples
fichiers, soit un par un, soit tous … la fois.

:p.De plus, vous pouvez retirer les info. d'un fichier ou plus et faire
renommer ces derniers automatiquement.

:p.Le programme peut aussi g‚n‚rer une liste de fichiers MP3, avec, pour
chaque fichier, un affichage d'une s‚lection ou de toutes les informations
relatives.

:p.:hp2.Quoi de neuf dans cette version?:ehp2.

:p.Si vous voulez savoir ce qu'il y a de nouveau ou ce qui a ‚t‚ chang‚ dans
cette version, veuillez vous r‚ferrer … l':link refid=history
reftype=hd.historique:elink..

:p.Notez qu'il y a pas mal de choses qui pourraient ˆtre (et qui seront)
ajout‚es … ce programme dans les futures versions. N'h‚sitez pas … m'envoyer
vos suggestions sur ce que vous aimeriez avoir... (Ceci dit, je ne vous
promets rien, hein! ;-).

:p.:hp2."Licence":ehp2.

:p.&progname. est 'mailware'. Vous ˆtes donc pri‚s de m'envoyer un petit
courrier ‚lectronique (ou une carte postale, ou ce que vous voulez) si vous
utilisez &progname.! (voir aussi :link refid=register
reftype=hd."Les 10 principales raisons de ne pas acqu‚rir la licence de
&progname.":elink. ;-)


.*-------------------------------------------------------------------------
.*fold00.*The windows

:h1 id=windows res=2000.Les fenˆtres
:p.Cette section vous d‚crit les diff‚rentes fenˆtres de &progname., les
fonctionnalit‚s qu'elles vous offrent et comment les utiliser.

.*-------------------------------------------------------------------------
.*fold00.*The main window

:h2 id=mainwindow res=2100.Fenˆtre principale
:p.La fenˆtre principale est la fenˆtre depuis laquelle vous ferez la majeure
partie du travail. C'est ici que vous pourrez obtenir et ‚diter les
informations sur les fichiers.

:p.Cette fenˆtre principale contient les sections suivantes&colon.
:ul compact.
:li.:link refid=filelist reftype=hd.La liste de s‚lection:elink.
:li.:link refid=fileinfo reftype=hd.L'affichage des informations sur le fichier lui-mˆme:elink.
:li.:link refid=taginfo reftype=hd.L'affichage des informations attach‚es:elink.
:li.:link refid=buttons reftype=hd.Les boutons et la barre de menu:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*The selected files list

:h3 id=filelist res=2110.Liste de s‚lection
:p.Cette liste contient les fichiers s‚lectionn‚s, i.e. les fichiers sur
lesquels vous serez suceptibles de travailler.

:dl break=all tsize=5.

:dt.:hp2.Ajouter des fichiers … la liste:ehp2.
:dd.Il y a plusieurs fa‡ons d'ajouter des fichiers … la liste&colon.
:ul.

:li.Vous pouvez utiliser la boŒte de dialogue qui apparait aprŠs avoir appuy‚
sur le bouton "Ouvrir..." ou lorsque vous s‚lectionnez "Ouvrir..." depuis
le menu "Fichier".

:li.Vous pouvez faire en sorte que &progname. fasse une :hp1.recherche des
fichiers … ajouter:ehp1. dans les r‚pertoires de votre choix, en choisissant
"Ouverture automatique..." depuis le menu "Fichier". Une :link
refid=autoopenwindow
reftype=hd.boŒte de dialogue de recherche:elink. apparaŒtra, dans laquelle
vous pourrez s‚lectionner le r‚pertoire dans lequel il faudra rechercher les
fichiers MP3 … ajouter.

:p.:hp1.Remarque&colon.:ehp1. Une recherche sera aussi effectu‚e dans tous les
sous-r‚pertoires du r‚pertoire s‚lectionn‚.

:li.Vous pouvez d‚poser par manipulation directe (Glisser/D‚poser) des
fichiers et/ou des r‚pertoires sur la fenˆtre principale de &progname..
Les fichiers seront ajout‚s … la liste, et une recherche des fichiers … ajouter
sera effectu‚e dans les r‚pertoires.
:eul.

:dt.:hp2.Supprimer des fichiers de la liste:ehp2.
:dd.Il y a plusieurs fa‡ons de supprimer des fichiers de la liste&colon.
:ul.
:li.Pour supprimer le fichier courant uniquement, appuyez sur ALT+'s' ou
s‚lectionnez "Supprimer courant" depuis le menu "Fichier".
:li.Pour supprimer tous les fichiers de la liste, s‚lectionnez "Supprimer
tout" depuis le menu "Fichier".
:eul.

:edl.

:p.Les op‚rations globales sur les fichiers telles que "Enregistrer tout" ou
"Supprimer tout", affectent l'ensemble des fichiers de la liste.

:p.Les op‚rations portant sur un seul fichier comme "Enregistrer" et
"Supprimer" n'affectent seulement que le fichier actuellement s‚lectionn‚
dans la liste.

:p.Le titre de la section affiche le nombre de fichiers qui sont actuellement
pr‚sents dans la liste.

:p.Appuyer sur ALT+'n' (ou s‚lectionner "Enregistrer puis suivant" dans le menu
"Fiche") enregistrera automatiquement les informations dans le fichier en cours
puis chargera le fichier suivant dans la liste. Appuyer sur ALT+'p' (ou
s‚lectionner "Enregistrer puis pr‚c‚dant" dans le menu "Fiche") aura le mˆme
effet sauf que c'est le fichier pr‚c‚dant dans la liste qui sera charg‚.
Cela permet ainsi l'‚dition de multiples fichiers, un par un.


.*-------------------------------------------------------------------------
.*fold00.*The file information display

:h3 id=fileinfo res=2120.Affichage des informations sur le fichier
:p.Cette section de la fenˆtre affiche les informations (techniques) sur le
fichier MP3 en cours. Les valeurs affich‚es sont prises directement dans
l'entˆte du fichier MP3 et ne peuvent donc pas ˆtre modifi‚es.

:dl break=all tsize=5.

:dt.:hp2.Version:ehp2.
:dd.Ce champ renseigne sur la :hp1.version:ehp1. du fichier MP3.

:dt.:hp2.Layer:ehp2.
:dd.Ce champ indique le :hp1.layer:ehp1. ("couche" 1, 2 ou 3) du fichier
MP3.

:dt.:hp2.Fr‚quence:ehp2.
:dd.Ce champ donne la :hp1.fr‚quence d'‚chantillonnage:ehp1. du fichier.

:dt.:hp2.D‚bit:ehp2.
:dd.Ce champ affiche le :hp1.d‚bit:ehp1. du fichier MP3. Le d‚bit indique
au lecteur MP3 combien de bits doivent ˆtre d‚cod‚s par seconde.

:dt.:hp2.Mode:ehp2.
:dd.Peut ˆtre stereo, stereo joint, double canal ou mono (simple canal).
Ne me demandez PAS ce que sont exactement les modes stereo joint et double
canal! &colon.-)

:dt.:hp2.Dur‚e estim‚e:ehp2.
:dd.C'est la dur‚e estim‚e de la plage musicale du fichier MP3. Elle est
calcul‚e en fonction de la taille du fichier et le d‚bit.

:dt.:hp2.Emphase:ehp2.
:dd.Rarement utilis‚ aujourd'hui. €a a quelque chose … voir avec la r‚duction
du bruit...

:dt.:hp2.Priv‚:ehp2.
:dd.Cela permet de savoir si le fichier MP3 est priv‚ ou non - enfin, c'est
ce que c'est suppos‚ signifier.

:dt.:hp2.Copyright:ehp2.
:dd.€a dit si le fichier MP3 est prot‚g‚ par les lois contre la copie.

:dt.:hp2.Original:ehp2.
:dd.Ici est indiqu‚ si le fichier MP3 est un original ou une copie. Ceci dit,
je ne sais pas exactement en quoi ‡a peut ˆtre bon d'avoir ce renseignement,
ni qui le d‚termine...

:dt.:hp2.CRC:ehp2.
:dd.Dit si le fichier MP3 inclut un code de correction d'erreur.

:dt.:hp2.Remplissage:ehp2.
:dd.Cela donne des informations techniques relatives au format du fichier MP3.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*The tag information display

:h3 id=taginfo res=2130.Affichage des informations attach‚es
:fn id=boc.
:p.Tir‚ de l'album "Imaginos" de Blue &Oe.yster Cult.
:efn.
.*-------------------------------------------------------------------------
:p.Cette section de la fenˆtre affiche les informations contenues dans les
donn‚es attach‚es du fichiers (tag ID3). Vous pouvez modifier ces valeurs
… votre guise (ou en entrer de nouvelles, si le fichier ne contenait pas
d'informations attach‚es avant), ceci seulement dans le cas bien entendu o—
ces info. ne sont pas en lecture seule (par exemple si l'attribut lecture
seule a ‚t‚ activ‚ ou si le fichier r‚side sur un CD-ROM).

:p.:hp1.Remarque&colon.:ehp1. Les longueurs limites sont celles fix‚es dans
les specifications des tag ID3, alors ne m'en voulez pas si vous n'arrivez …
faire entrer :link refid=boc reftype=fn."The siege and investiture of Baron
von Frankenstein's castle at Weisseria":elink. dans le champ titre!

:dl break=all tsize=5.

:dt.:hp2.Titre:ehp2.
:dd.Le titre de la chanson (ou du morceau de musique que le fichier contient).
Peut contenir jusqu'… 30 caractŠres.

:dt.:hp2.Artiste:ehp2.
:dd.Mozart, Black Sabbath, Bananarama, un chat qui aboie... vous avez compris.
Peut contenir jusqu'… 30 caractŠres.

:dt.:hp2.Album:ehp2.
:dd.De quel album cette chanson (ou quoique ce soit) est tir‚e. Si cela n'a
rien … voir avec un album, vous pouvez toujours laisser ce champ vide si vous
voulez. Lui aussi peut contenir jusqu'… 30 caractŠres.

:dt.:hp2.Ann‚e:ehp2.
:dd.Date … laquelle la chanson a ‚t‚ enregistr‚e, publi‚e, nø1 au Top50 ou
quoiqu'il vous semble bon d'y mettre - mˆme des caractŠres alphab‚tiques
puisqu'il n'y a aucune restriction quant au type de donn‚es de ce champ.
4 caractŠres maximum peuvent y prendre place.

:dt.:hp2.Genre:ehp2.
:dd.Le type de musique que c'est. · choisir parmi ceux d'une liste extensible.
Je ne sais pas qui "invente" ces genres, mais il semble y avoir un accord
commun sur leur existence. Donc ne me demandez pas d'en ajouter ni d'en
retirer ne serait-ce qu'un seul. Ceci dit, si vous le d‚sirez, vous pouvez
toujours les ‚diter vous-mˆme (c.f. :link refid=genresfile reftype=hd."Le
fichier de genres":elink.).

:dt.:hp2.Remarques:ehp2.
:dd.Faites figurer vos remarques ici. Pas … propos du programme, bien-s–r, mais
au sujet du fichier MP3. 30 caractŠres (seulement 28 si vous utilisez le champ
"Piste nø").
:p.:hp1.Remarque&colon.:ehp1. Vous pouvez utiliser des macros qui seront
automatiquement remplac‚es par les valeurs appropri‚es … la sauvegarde des
informations attach‚es (valable aussi avec la fonction "Enregistrer
tout")&colon.
:ul compact.
:li.$T - Titre
:li.$A - Artiste
:li.$a - Album
:li.$Y - Ann‚e
:li.$G - Genre
:li.$C - Remarque
:li.$v - Num‚ro de version MPEG
:li.$l - Layer du fichier
:li.$t - Dur‚e estim‚e
:li.$m - Mode
:li.$f - Fr‚quence
:li.$b - D‚bit
:li.$r - Piste nø
:eul.
:p.:hp1.Exemple&colon.:ehp1. Si vous tapez ici "Dur‚e=$t, mode $m" et
enregistrez, figurera alors dans les remarques quelque chose comme
"Dur‚e=03&colon.14, mode Stereo".

:dt.:hp2.Piste nø:ehp2.
:dd.Vous pouvez ici sp‚cifier quel ‚tait le num‚ro de piste de la chanson
(si celle-ci a ‚t‚ tir‚e d'un CD audio par exemple).
:p.:hp1.Remarque&colon.:ehp1. Ce champ est une extension … l'ID3 v1.0 (fait
partie de la v1.1). Si vous le mettez … 0, les informations attach‚es seront
consid‚r‚es comme appartenant … l'ID3 v1.0. Si vous mettez une autre valeur
que 0, ce sera un "tag" v1.1&colon. le num‚ro de piste est stock‚ dans les
deux derniers octets des remarques. Le champ remarques fera alors 28
caractŠres de long. Si vous en aviez d‚j… entr‚ 29 ou 30, ils seront tronqu‚s
… 28 caractŠres … l'enregistrement.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*The push buttons + menu

:h3 id=buttons res=2140.Boutons et menus
:dl break=all tsize=5.
:dt.:hp2.Ouvrir...:ehp2.
:dd.Affiche une boŒte de dialogue d'ouverture de fichier, vous permettant
de s‚lectionner les fichiers que vous voulez ajouter … la :link
refid=filelist reftype=hd.liste de s‚lection:elink..

:dt.:hp2.Ouverture automatique...:ehp2. (menu seulement)
:dd.Affiche une boŒte de dialogue d':link refid=autoopenwindow
reftype=hd.ouverture automatique des r‚pertoires:elink., vous permettant
de s‚lectionner les r‚pertoires dans lesquels seront recherch‚s les fichiers
… ajouter … la :link refid=filelist reftype=hd.liste de s‚lection:elink..
Une recherche dans les sous-r‚pertoires sera aussi effectu‚e.

:dt.:hp2.Supprimer courant:ehp2. (menu seulement)
:dd.Retire de la :link refid=filelist reftype=hd.liste:elink. le fichier en
cours de s‚lection.

:dt.:hp2.Supprimer tout:ehp2. (menu seulement)
:dd.Retire tous les fichiers de la :link refid=filelist reftype=hd.liste de
s‚lection:elink..

:dt.:hp2.Renommer...:ehp2. (menu seulement)
:dd.Cette option ouvre la :link refid=renamewindow reftype=hd.boŒte de
dialogue de renommage :elink., vous permettant de faire en sorte que tous les
fichiers soient renomm‚s automatiquement, en utilisant un modŠle de nom
(comprenant des macro.) comme masque de renommage.

.*:dd.Remplace automatiquement tous les noms de fichiers par leurs titres
.*respectifs.
.*:p.Les caractŠres qui apparaissent dans le titre mais qui ne sont pas autoris‚s
.*pour les noms de fichiers par le HPFS ("*", "?", etc.) ainsi que les espaces
.*seront convertis en "_" avant le renommage. Si un fichier avec un mˆme nom
.*existe d‚j…, "_n" sera ajout‚ au nom, o— n est un nombre unique. Les fichiers
.*sans informations attach‚es ou avec un champ "titre" vide ne seront pas
.*renomm‚s.
.*:p.Cette fonction se plantera lamentablement (i.e. affichera un message
.*d'erreur) si jamais un nom de fichier est trop long pour le systŠme de
.*fichier (par exemple, sur une unit‚ de disque format‚e FAT o— les noms de
.*fichiers ne peuvent pas d‚passer 8 caractŠres).

:dt.:hp2.Liste...:ehp2.
:dd.Affiche une fenˆtre de dialogue de :link refid=listwindow
reftype=hd.construction de liste:elink., vous permettant de sortir sur disque
une liste de tous les fichiers s‚lectionn‚s. Vous pouvez de plus choisir
quelles seront les informations qui devront figurer dans la liste pour
chaque fichier.

:dt.:hp2.Quitter:ehp2.
:dd.Vous l'aviez certainement d‚j… devin‚, cette option permet de quitter
le programme. Enregistrez avant tout ce que vous ne voulez pas perdre,
parcequ'il n'y aura aucun message de confirmation aprŠs...

:dt.:hp2.Enregistrer courant:ehp2.
:dd.Sauvegarde les donn‚es des champs des :link refid=taginfo
reftype=hd.informations attach‚es:elink. dans ceux du fichier en cours.

:dt.:hp2.Enregistrer puis suivant:ehp2. (menu seulement)
:dd.Sauvegarde les informations attach‚es en cours puis affiche celles du
fichier suivant dans la liste.

:dt.:hp2.Enregistrer puis pr‚c‚dant:ehp2. (menu seulement)
:dd.Sauvegarde les informations attach‚es en cours puis affiche celles du
fichier pr‚c‚dant dans la liste.

:dt.:hp2.Enregistrer tout:ehp2.
:dd.Sauvegarde les donn‚es des champs des :link refid=taginfo
reftype=hd.informations attach‚es:elink. comme donn‚es d'informations
attach‚es de tous les fichiers de la :link refid=filelist
reftype=hd.liste de s‚lection:elink..
:p.Si vous laissez vide un champ de donn‚es ou plus (et ‡a veut dire
:hp1.vide:ehp1., pas d'espace, rien!), la valeur de ce champ ne sera pas
modifi‚e si un fichier possŠde d‚j… une information pour chacune de ces
entr‚es. S‚lectionner "(aucun)" pour le genre donnera le mˆme effet pour
ce champ.

:dt.:hp2.Supprimer courant:ehp2.
:dd.Efface les informations attach‚es au fichier en cours - si il en a
(sinon, cette option restera gris‚e). Ce n'est pas trŠs utile pour r‚duire
l'espace allou‚ de vos disque, puisque cela ne r‚duit le fichier que de 128
octets.

:dt.:hp2.Supprimer tout:ehp2.
:dd.Efface les informations attach‚es de tous les fichiers de la :link
refid=filelist reftype=hd.liste de s‚lection:elink.. · utiliser avec
pr‚caution!

:dt.:hp2.Lecture du fichier:ehp2. (menu seulement)
:dd.Lance le lecteur MP3 de votre choix en utilisant le fichier courant.
Voir :link refid=playercmdfiles reftype=hd.le fichiers de commandes
du lecteur:elink. pour plus d'informations.

:dt.:hp2.Afficher les boutons:ehp2. (menu seulement)
:dd.Affiche (si cach‚) ou cache (si affich‚) l'ensemble des boutons sur la
partie droite de la fenˆtre.

:dt.:hp2.Afficher les info. fichier:ehp2. (menu seulement)
:dd.Affiche (si cach‚) ou cache (si affich‚) le groupe des :link
refid=fileinfo reftype=hd.informations sur le fichier:elink..

:dt.:hp2.Index:ehp2. (menu selement)
:dd.Affiche le contenu de cette aide en ligne.

:dt.:hp2.Aide g‚n‚rale:ehp2.
:dd.Vous affiche cette aide. Mais je suppose que vous aviez d‚j… trouv‚ par
vous mˆme! ;-)

:dt.:hp2.· propos de... / Info. produit:ehp2.
:dd.Affiche une boŒte de message contenant les informations sur la version
de &progname. que vous utilisez ainsi que sur la maniŠre de joindre l'auteur.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*The settings window

:h2 id=settingswindow res=2200.Fenˆtre de configuration
:p.La fenˆtre de configuration vous offre la possibilit‚ de modifier et
d'ajuster diverses choses comme les avertissements, si vous voulez que
 &progname. vous signale certains ‚v‚nements (par exemple lorsque des fichiers
ont ‚t‚ ajout‚s … la :link refid=filelist reftype=hd.liste de
s‚lection:elink.), ou bien encore quel langue vous voulez utiliser.

:p.S‚lectionner le bouton "OK" en bas de la fenˆtre fermera le bloc-notes des
paramŠtres et activera ces derniers. S‚lectionner "D‚faire" annulera tous les
changements effectu‚s sur la page du bloc-notes actuellement s‚lectionn‚e.
"Aide" aura pour effet d'afficher l'‚cran d'aide de la page en cours.

:p.Le bloc-notes des paramŠtres contient les pages suivantes&colon.
:ul compact.
:li.:link refid=notification reftype=hd.Avertissements:elink.
:li.:link refid=keepinfo reftype=hd.Conservation:elink.
:li.:link refid=misc reftype=hd.G‚n‚ral:elink.
:li.:link refid=language reftype=hd.Langues:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*Notification

:h3 id=notification res=2210.Page Avertissements
:p.Sur cette page vous s‚lectionnez quels sont les ‚v‚nements que &progname.
doit vous signaler et comment il doit le faire.

:dl break=all tsize=5.

:dt.:hp2.Confirmer lorsque...:ehp2.
:dd.Ici vous s‚lectionnez les ‚v‚nements qui devront ˆtre signal‚s. Cette
section est assez explicite, je pense.

:dt.:hp2.Type d'avertissement:ehp2.

:dd.Ici vous d‚cidez la maniŠre dont les ‚v‚nements vous sont signal‚s.
:ul.
:li."BoŒte … cliquouillage" affichera une fenˆtre de message avec un bouton
"OK", sur lequel vous devrez appuyer pour fermer la fenˆtre.
:li."Message temporis‚" affichera une fenˆtre de message pendant quelques
secondes (vous pouvez aussi cliquer dessus pour la faire disparaŒtre).
:li."Signalisation audio-acoustique" g‚nŠrera seulement 3 bips sur le
haut-parleur int‚gr‚ … votre machine.
:eul.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Keep info

:h3 id=keepinfo res=2220.Page Conservation
:p.Sur cette page vous pouvez demander … ce que les informations attach‚es
(ou bien une partie) soient conserv‚es dans les champs de donn‚es, lors du
passage … un nouveau fichier … l'aide de ALT+'n' ou ALT+'p'.

:dl break=all tsize=5.

:dt.:hp2.Lors du passage d'un fichier … un autre...:ehp2.
:dd.Cochez la case si vous voulez utiliser la fonction de conservation
d'informations lors du passage d'un fichier … un autre. Si vous ne l'activez
pas, en passant … un autre fichier vous n'aurez que les informations attach‚es
propres … ce dernier.

:dt.:hp2.Conserver...:ehp2.
:dd.C'est ici que vous s‚lectionnez quelles sont les informations attach‚es qui
devront ˆtre conserv‚es. Le reste est suffisamment explicite, je pense?

:dt.:hp2.Autres options:ehp2.
:dd.Ce sont quelques options de plus pour la fonction de conservation.
:ul.
:li."In/D‚-cr‚menter le num‚ro de piste" - Si vous l'activez, le num‚ro de
piste incr‚mentera automatiquement lors du passage au fichier qui suit, ou
d‚cr‚mentera lors du passage … celui qui pr‚cŠde.
:li."Conserver si l'info. n'est pas d‚j… pr‚sente" - Si vous l'activez,
l'information que vous avez s‚lectionn‚e plus haut sera reprise seulement
si le nouveau fichier ne l'a pas d‚j… (i.e. si le champ d'entr‚e est vide,
si la piste est … 0 ou si le genre est "(aucun)"). Si jamais le nouveau fichier
pr‚sente d‚j… cette information, elle ne sera pas chang‚e.
:eul.
:edl.
:p.:hp1.Exemple&colon.:ehp1. Vous avez choisi "Titre" et "Artiste" dans le
groupe "Conserver..." et "Conserver si l'info. n'est pas d‚j… pr‚sente"
(ainsi que "Lors du passage d'un fichier … un autre..." bien entendu) est
s‚lectionn‚. Le titre du fichier en cours est  "I wish you were a beer" et
l'artiste est "Cycle Sluts from Hell". Vous appuyez sur ALT+'n' (ou
s‚lectionnez "Enregistrer puis suivant" dans le menu "Info"). Le nouveau
fichier a d‚j… un titre (disons "Dark Ships") mais le champ artiste n'est pas
renseign‚. Dans les diff‚rents champs d'entr‚es on peut maintenant lire&colon.
"Dark Ships" dans le champ Titre et "Cycle Sluts from Hell" dans le champ
artiste.
:p.Si vous n'aviez pas s‚lectionn‚ l'option "Conserver si l'info. n'est pas
d‚j… pr‚sente" dans l'exemple pr‚c‚dent, dans le champ Titre du nouveau fichier
on aurait eu "I wish you were a beer".
:p.Bon! J'espŠre en tout cas que comprendre cette fonction aura ‚t‚ plus simple
que de la programmer! ;-)

:p.:hp1.Remarque&colon.:ehp1. quand on utilise la fonction "Conserver..." et
qu'on atteint un fichier en lecture seule, ou que dans le nouveau fichier il y
a une info. dans un des champs choisis et que l'option "Conserver si l'info.
n'est pas d‚j… pr‚sente" est activ‚e, &progname. ne conserve pas l'info. du
fichier initial, mais utilise les donn‚es du nouveau fichier. Avec un peu de
chance, cela sera corrig‚ dans une prochaine version.


.*-------------------------------------------------------------------------
.*fold00.*Misc

:h3 id=misc res=2230.Page G‚n‚ral
:p.Sur cette page vous pouvez r‚gler divers paramŠtres.

:dl break=all tsize=5.

:dt.:hp2.Lire le genre depuis le fichier...:ehp2.
:dd.Ici vous entrez le nom du fichier (texte) dans lequel &progname. devra
lire les types de musique. Pour plus d'informations, voir :link
refid=genresfile reftype=hd."Le fichier de genres":elink..

:dt.:hp2.Commandes du lecteur:ehp2.
:dd.Ici vous pouvez entrer la commande qui devra ˆtre utilis‚e pour lancer
un lecteur de MP3 lorsque vous s‚lectionnez "Lecture du fichier" dans le
menu "Extras" sur la :link refid=buttons reftype=hd.barre de menus:elink.
de la :link refid=mainwindow reftype=hd.fenˆtre principale:elink.. Entrez
$f l… o— le nom de fichier doit ˆtre fourni sur la ligne de commande.

:p.:hp1.Remarque&colon.:ehp1. Pour des raisons techniques, vous devez utiliser
un fichier de commandes CMD pour lancer le lecteur, appeler directement le
fichier ex‚cutable (.EXE) peut ne pas fonctionner. J'ai joint quelques :link
refid=playercmdfiles reftype=hd.fichiers de commandes pour les lecteurs MP3
les plus connus:elink. pour OS/2 dans l'archive de distribution de &progname..
Vous n'avez plus qu'… modifier celui que vous voulez utiliser pour refl‚ter
votre configuration (cela peut ˆtre fait avec n'importe quel ‚diteur de texte).

:p.:hp1.Exemple&colon.:ehp1. Entrez "goPM123 $f" dans le champ de donn‚es si
vous voulez utiliser PM123 pour ‚couter vos fichiers.

:dt.:hp2.Autres options:ehp2.
:dd.Ici vous pouvez ajuster diverses autres options&colon.
:ul.

:li."Utiliser le nom de fichier comme titre" - Si vous activez celle-ci,
&progname. insŠrera automatiquement le nom de fichier dans le champ Titre
du :link refid=taginfo reftype=hd.groupe des donn‚es attach‚es:elink., si
le fichier n'a pas d‚j… un titre.

.*:li."31 caractŠres max. pour le renommage auto." - Si vous activez celle-l…,
.*la fonction de renommage automatique (voir la section :link refid=buttons
.*reftype=hd."Boutons et menu":elink. pour en savoir plus sur ce sujet) ne
.*cr‚era pas de noms plus long que 31 caractŠres (Extension .mp3 incluse).
.*C'est utile dans le cas o— vous voulez construire des CD-ROM de MP3, comme les
.*noms doivent ˆtre de 31 caractŠres au maximum.

:li."BoŒte de fichier personnalis‚e" - Si vous l'activez, Minta utilisera sa
propre boŒte de dialogue d'ouverture de fichier (qui est … mon avis un peu
plus jolie que celle d‚finie par d‚faut dans le systŠme).

:li."Pas d'avertissement si fichier non valide" - Il arrive parfois que
&progname. ne puisse pas d‚coder l'entˆte d'un fichier MP3 (certains fichiers
ont des entˆtes :hp1.franchement:ehp1. bizarres) et qu'il considŠre que le
fichier n'est pas un fichier MP3 valide (‡a marche aussi, bien s–r, dans le cas
o— le fichier n'est :hp1.effectivement:ehp1. pas un fichier MP3!). Si vous
avez vraiment trop de fichiers de ce genre, vous pouvez d‚sactiver les
messages d'avertissement que &progname. affichera en pareil cas.

:li."Lisibilit‚ des champs en lecture seule" - Normalement, si le fichier
courant est en lecture seule, &progname. grise tous les champs du :link
refid=taginfo reftype=hd.groupe des donn‚es attach‚es:elink.. Comme ‡a les
rend parfois assez difficiles … lire, vous pouvez activer cette option et
&progname. affichera alors normalement les champs. Puisqu'ils sont en
lecture seule, vous ne pourrez pas les modifier.

:eul.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*Language

:h3 id=language res=2240.Page Langues
:p.Sur cette page vous d‚finissez dans quelle langue &progname. devra
s'exprimer. Vous pouvez choisir n'importe laquelle des langues figurant
dans la liste.

:p.:hp1.Remarque 1&colon.:ehp1. Si vous s‚lectionnez une autre langue que
celle d‚finie, les changements ne prendront effet qu'au red‚marrage du
programme.

:p.:hp1.Remarque 2&colon.:ehp1. Si vous voulez traduire &progname. dans
une autre langue, vous ˆtes le (ou la) bienvenu(e)! Veuillez vous
r‚ferrer … :link refid=helpwanted reftype=hd."On demande de l'aide!":elink.
pour en savoir plus sur ce sujet.


.*-------------------------------------------------------------------------
.*fold00.*The list window
:h2 id=listwindow res=2300.Fenˆtre de construction de liste
:p.Cette fenˆtre vous autorise … sortir sur disque une liste de tous les
fichiers s‚lectionn‚s. La liste r‚sultante contiendra une ligne par fichier.

:dl break=all tsize=5.

:dt.:hp2.Fichier de sortie &amp. bouton "Recherche":ehp2.
:dd.Vous entrez ici le nom du fichier sous lequel la liste devra ˆtre
enregistr‚e. Cliquer sur le bouton "Recherche" fera apparaŒtre une boŒte
de dialogue d'ouverture de fichier vous permettant d'en sp‚cifier un plus
ais‚ment.

:dt.:hp2.Informations … inclure:ehp2.
:dd.L… vous s‚lectionnez quelles sont les donn‚es des informations attach‚es
qui devront ˆtre ajout‚es … la liste pour chacun des fichiers. Veuillez
s‚lectionner au moins un ‚l‚ment. L'ordre des champs ne peut pour l'instant
pas ˆtre chang‚ (dans une future version peut-ˆtre).

:dt.:hp2.Entˆte de liste:ehp2.
:dd.Si vous cochez cette case, la liste contiendra une entˆte pour chaque
colonne d'informations.

:dt.:hp2.Dur‚e totale pour la liste:ehp2.
:dd.Si vous cochez cette case, la dur‚e de tous les fichiers de la liste
sera calcul‚e et figurera … la fin de la liste.

:dt.:hp2.Tailles de colonnes auto.:ehp2.
:dd.Si vous cochez cette case, les colonnes d'informations dans la liste
seront dimensionn‚es en fonction de la plus longue occurence. Si la coche
n'est pas s‚lectionn‚e, la longueur maximum possible sera utilis‚e pour les
champs d'informations des colonnes.

:p.:hp1.Remarque&colon.:ehp1. Si vous avez sp‚cifi‚ les fichiers avec leurs
chemins de recherche, cette colonne sera toujours dimensionn‚e automatiquement;
Je ne trouve pas trŠs joli personnellement de faire une colonne de 256
caractŠres (taille maximale d'un chemin pour le HPFS) pour chaque fichier.
Notez de plus que l'utilisation de cette fonction doublera approximativement le
temps de cr‚ation de la liste, puisque &progname. doit v‚rifier tous les
fichiers pour d‚terminer la longueur maximale des champs (except‚ pour le champ
Chemin/Fichier pour lequel la longueur maximale est calcul‚e lors de l'ajout
du fichier … la :link refid=filelist reftype=hd.liste de s‚lection:elink.).

:dt.:hp2.Fichiers avec info. uniquement:ehp2.
:dd.Si vous cochez cette case, seuls les fichiers qui ont des informations ID3
attach‚es figureront dans la liste. Les autres seront ignor‚s.

:dt.:hp2.OK:ehp2.
:dd.Ce bouton enregistrera la liste dans le fichier de sortie s‚lectionn‚.

:dt.:hp2.Annuler:ehp2.
:dd.Ce bouton fermera la fenˆtre sans qu'aucune action ne soit entreprise.

:dt.:hp2.Aide:ehp2.
:dd.Ce bouton affichera l'aide.

:edl.

.*-------------------------------------------------------------------------
.*fold00.*The renaming window
:h2 id=renamewindow res=2500.Fenˆtre de renommage.
:p.Cette fenˆtre vous permet de faire en sorte que tous les fichiers de la
liste soient renomm‚s en utilisant un modŠle configurable.

:dl break=all tsize=5.

:dt.:hp2.ModŠle de renommage:ehp2.
:dd.Ce champ contient le masque pour le renommage. Vous pouvez entrer
n'importe quelle combinaison de textes et de macro.. Tous les fichiers seront
renomm‚s en fonction de ce modŠle. Si un nom existe d‚j…, le fichier aura le
mˆme nom mais avec un num‚ro unique attach‚.
:p.Les macro. suivantes sont disponibles et seront automatiquement remplac‚es
par leurs valeurs respectives&colon.
:ul compact.
:li.$T - Titre
:li.$A - Artiste
:li.$a - Album
:li.$Y - Ann‚e
:li.$G - Genre
:li.$C - Remarque
:li.$v - Num‚ro de version MPEG
:li.$l - Layer du fichier
:li.$t - Dur‚e estim‚e
:li.$m - Mode
:li.$f - Fr‚quence
:li.$b - D‚bit
:li.$r - Piste nø
:eul.
:p.:hp1.Exemple&colon.:ehp1. Si vous mettez ici "($A)-$T" et que le titre du
premier fichier est "Eat the Rich" par "Mot&oe.rhead", le nouveau fichier
deviendrait "(Mot&oe.rhead)-Eat the Rich.mp3".
:p.:hp1.Remarque&colon.:ehp1. Tous les caractŠres qui ne sont pas autoris‚s
pour les noms de fichiers par le HPFS ("*", "?", etc.) seront convertis en
"_" avant le renommage.

:dt.:hp2.Limitation des noms … pas plus de...:ehp2.
:dd.En particulier pour la cr‚ation de CD, pour lesquels le systŠme de
fichier n'accepte pas forc‚ment que les noms fassent plus de 31 caractŠres,
cette fonction peut se r‚v‚ler trŠs pratique.
Les noms seront automatiquement limit‚s au nombre de caractŠres donn‚
(ceci inclut l'extension de fichier!).

:dt.:hp2.Remplacer les espaces par des '_':ehp2.
:dd.Si vous n'aimez pas avoir des espaces dans les noms de vos fichiers,
cochez ce bouton et ils seront remplac‚s par des '_'.

:dt.:hp2.Renommer:ehp2.
:dd.Vous apporte la sant‚ et la jeunesse ‚ternelle.
Bien-s–r que non! Si c'‚tait le cas &progname. n'aurait jamais ‚t‚ gratuit ;-).
Ce bouton lance le processus de renommage.

:dt.:hp2.Annuler:ehp2.
:dd.Retirera les points de sortilŠges de tous les ‚l‚ments de votre sac si
vous vous zappez avec.
:p.Non attendez! Je me suis gourr‚ de documentation! Ce bouton fermera la
fenˆtre et rien de plus.

:dt.:hp2.Aide:ehp2.
:dd.Ce bouton devrait d‚clencher un chorus d'appels … l'aide … travers
tous les p‚riph‚riques audio disponibles, ou quelquechose comme ‡a...

:edl.
:p.:hp1.Remarque&colon.:ehp1. Cette fonction se plantera lamentablement (i.e.
affichera un message d'erreur) si jamais un nom de fichier est trop long pour
le systŠme de fichier (par exemple, sur une unit‚ de disque format‚e FAT o—
les noms de fichiers ne peuvent pas d‚passer 8 caractŠres).

.*-------------------------------------------------------------------------
.*fold00.*The autoopen window
:h2 id=autoopenwindow res=2400.Fenˆtre Ouverture automatique...
:p.Cette fenˆtre vous permet de s‚lectionner le r‚pertoire de recherche des
fichiers MP3.

.*-------------------------------------------------------------------------
.*fold00.*Commandline arguments
:h1 id=cmdlineargs res=3000.Arguments de ligne de commande
:p.Le seul argument de ligne de commande que &progname. accepte est un
nom de fichier ou de r‚pertoire. Cela vous autorise la sp‚cification d'un
fichier … ouvrir ou d'un r‚pertoire … rechercher en une ligne de commande,
ainsi que l'association de fichiers MP3 avec &progname. sur le bureau.

:p.:hp1.Exemple&colon.:ehp1. Si vous tapez "minta c&colon.\mes_mp3" en ligne de
commandes, &progname. recherchera dans le r‚pertoire "c&colon.\mes_mp3" (si
c'est un r‚pertoire bien ‚videmment ;-) tous les fichiers MP3 et la
fenˆtre principale s'affichera et tous les fichiers qui auront ‚t‚ trouv‚s
‚tant ajout‚s … la :link refid=filelist reftype=hd.liste de s‚lection:elink..


.*-------------------------------------------------------------------------
.*fold00.*Tips + tricks
:h1 id=tipstricks res=4000.Trucs et astuces
:p.Ici vous trouverez des trucs et astuces qui vous ‚pargneront pas mal de
travail ou qui vous rendront la vie plus facile en utilisant &progname..

:dl break=all tsize=5.

:dt.:hp2.G‚rer des albums entiers - Approche de l'option "Enregistrer
tout":ehp2.
:dd.Une maniŠre de renseigner des albums entiers, sans avoir … entrer la
mˆme information encore et encore est d'utiliser la fonction "Enregistrer
tout"&colon.
:ol compact.
:li.Chargez tous les fichiers MP3 appartenant … l'album dans la :link
refid=filelist reftype=hd.liste de s‚lection:elink.. Si vous les conservez
dans un seul r‚pertoire, vous pouvez utiliser la fonction d':link refid=buttons
reftype=hd.ouverture automatique:elink. (Assurez-vous que ce sont les seuls
fichiers dans liste,  si n‚cessaire utilisez avant la commande "Supprimer
tout"!).
:li.Entrez les info. sur l'artiste, l'album, l'ann‚e (et ‚ventuellement le
genre) dans les champs appropri‚s du :link refid=taginfo reftype=hd.groupe
des informations attach‚es:elink.. Assurez-vous que les autres champs sont
vides (ou 0, ou "(aucun)").
:li.Si vous voulez mettre la dur‚e ou autres dans la ligne de commentaire
utilisez les :link refid=taginfo reftype=hd.macros:elink. appropri‚es dans
le champ "Remarques".
:li.S‚lectionnez le bouton "Enregistrer tout" ou l'option "Enregistrer tout"
depuis le menu "Fiche". Cliquez sur "OK" dans la boŒte de dialogue qui
apparaŒt. Les info. que vous avez entr‚es seront alors enristr‚es dans tous
les fichiers.
:li.S‚lectionnez le premier des fichiers de la :link refid=filelist
reftype=hd.liste de s‚lection:elink. et renseignez les informations manquantes
(Titre, nø de piste, etc.).
:li.Quand vous avez fini, utilisez ALT+'n' pour passer au fichier suivant et
remplir les champs d'info. de chacun d'eux.
:eol.

:dt.:hp2.G‚rer des albums entiers - Approche de l'option "Conserver...":ehp2.
:dd.Une autre fa‡on de g‚rer facilement des albums entiers est d'utiliser la
fonction de "conservation"&colon.
:ol compact.
:li.Ouvrir la :link refid=settingswindow reftype=hd.fenˆtre de
configuration:elink. (en s‚lectionnant l'option "Configuration..." depuis le
menu "Fichier") et allez … l'onglet "Conservation".
:li.Activez (si ce n'est d‚j… fait) l'option "Lors du passage d'un fichier …
un autre...". Dans le groupe "Conserver...", activez "Artiste", "Album",
"Ann‚e" et ‚ventuellement aussi "Genre" et "Commentaire". Si vous voulez
enregistrer le num‚ro de piste pour chaque fichier, activez l'option
"In/D‚-cr‚menter le num‚ro de piste".
D‚cochez tous les autres boutons de la page (si ils ‚taient d‚j… coch‚s).
:li.Fermez la fenˆtre de configuration en cliquant sur le bouton "OK".
:li.Chargez tous les fichiers MP3 appartenant … l'album dans la
:link refid=filelist reftype=hd.liste de s‚lection:elink.. Si vous les
conservez tous dans un seul r‚pertoire, vous pouvez utiliser la fonction
:link refid=buttons reftype=hd.ouverture automatique:elink. (Assurez-vous que
ce sont les seuls fichiers dans la liste, si n‚cessaire en utilisant "Supprimer
tout" au paravant!)
:li.Entrez le titre, l'artiste, l'album, l'ann‚e (et ‚ventuellement le genre)
pour le premier fichier de la liste dans les champs appropri‚s du :link
refid=taginfo reftype=hd.groupe des informations attach‚es:elink..
:li.Si vous voulez mettre la dur‚e ou autres dans la ligne de commentaire de
chaque chanson utilisez les :link refid=taginfo reftype=hd.macros:elink.
appropri‚es dans le champ Remarques.
:li.Si vous voulez sauvegarder le num‚ro de piste pour chaque fichier, mettez
1 comme num‚ro de piste.
:li.Utilisez ALT+'n' (ou "Enregistrer puis suivant" dans le menu "Fiche") pour
passer au fichier suivant dans la liste. Remplissez les champs manquants.
Utilisez ALT+'n' pour passer au fichier suivant et remplir les champs d'info.
de chacun d'eux.
:eol.
:edl.
:p.Une fonction trŠs utile, qui peut ˆtre utilis‚e en seconde approche, est
l'activation de l'option "Utiliser le nom de fichier comme titre" … la page
:link refid=misc reftype=hd."G‚n‚ral":elink. de la :link refid=settingswindow
reftype=hd.fenˆtre de configuration:elink.. Si vos fichiers comportent d‚j…
des noms qui ressemblent beaucoup aux titres des chansons (par exemple comme
"I_WISH_YOU_WERE_A_BEER.MP3"), tout ce que vous aurez … faire alors sera de
modifier le titre pour chaque fichier.


.*-------------------------------------------------------------------------
.*fold00.*Past, present + future
:h1 id=pastpresentfuture res=5000.Pass‚, pr‚sent &amp. futur
:p.Cette section vous donne l'historique de &progname., quelques informations
au sujet de la version en cours (et de ses bugs) et des choses qui pourraient
ˆtre ajout‚es ou chang‚es dans le futur.


.*-------------------------------------------------------------------------
.*fold00.*Version history
:h2 id=history.Historique des versions
:p.Ici vous pouvez voir ce qui a ‚t‚ ajout‚ ou chang‚ dans les diff‚rentes
versions du programme.

:dl break=all tsize=5.

:dt.:hp2.Version 2.50:ehp2.
:dd.No, that's still not the next big release &colon.-)
:ul compact.
:li.Italian translation of program and online help - many thanks
to Alberto Gabrielli!!
:li.Various small bugfixes and improvements - special thanks to 
Alberto Gabrielli again!
:eul.

:dt.:hp2.Version 2.45:ehp2.
:dd.As due to my limited time the next "big" release may still take a while,
I decided to do a small one that fixes some bugs and adds some tiny features.
:ul compact.
:li.Added :link refid=cmdlineargs reftype=hd.commandline argument:elink. to
tell &progname. to output the tracknumber with leading zero when renaming.
:li.Added :link refid=cmdlineargs reftype=hd.commandline argument:elink. to
tell &progname. where she shall look for the INI-file.
:li.Added :link refid=cmdlineargs reftype=hd.commandline argument:elink. to
tell &progname. to stop complaining if changing the LONGNAME extended attribute
failes while renaming (on some configurations, while renaming worked, this
function still reported an error).
:li.Renamed "Delete" to the less dangerous sounding "Release" in the 
menu &colon.-)
:li.Bugfix&colon. While renaming, if the new name is equal the old one
&progname. will not try to rename the file any more (resulted in the filename
having added an unnecessary number).
:li.Bugfix&colon. Associating MP3 files with &progname. on the WPS works again
(I had changed the commandline parsing and that caused the problem)
:li.If &progname. is started from an foreign directory, she will now try to load 
all files (*.dll, *.hlp, *.ini, genres, ...) from the dir where her
exe resides.
:eul.

:dt.:hp2.Version 2.41:ehp2.
:dd.More translations and other small stuff ...
:ul compact.
:li.French language support
:li.Norwegian language support (not totally complete yet)
:li.Russian language support (program only)
:li.When renaming files, now also the ".LONGNAME" extended attribute will
be adjusted.
:li.When renaming you now also can use the tracknumber.
:eul.

:dt.:hp2.Version 2.25:ehp2.
:dd."It's about time the played something cool!" - et d'ailleurs la v2.25 est
arriv‚e!
:ul compact.
:li.Support de la langue suisse.
:li.Fonction de renommage automatique (renommage en utilisant un modŠle, des
macro., une limite de longueur des fichiers g‚n‚r‚s, choix du remplacement
des espaces par des '_').
:li.Les tags ID3v2.x sont … pr‚sent d‚tect‚s et ‚vit‚s proprement (d‚sol‚ mais
la visualisation/‚dition de ceux-ci viendra plus tard...)
:li.Meilleur aper‡u de la boŒte de dialogue d'ouverture de fichier.
:li.Quelques lignes de codes internes ont chang‚.
:li.Quelques bugounets (des bugs parfois purement esth‚tiques si petits que
personne ne les avait remarqu‚s) corrig‚s.
:eul.

:dt.:hp2.Version 2.00:ehp2.
:dd.Grƒce … la cr‚ativit‚ infinie des bˆta-testeurs, aux suggestions des
utilisateurs et … mes propres souhaits, &progname. pr‚sente maintenant
les nouvelles fonctionnalit‚s suivantes:
:ul compact.
:li.Comme je l'avais toujours promis dans les version pr‚c‚dentes, &progname.
charge maintenant le genre depuis un fichier qui peut ˆtre s‚lectionn‚ et
‚dit‚ par l'utilisateur. &progname. accepte son propre format de fichier ou
peut charger le fichier "genres.txt" de WarpAMP. Se r‚ferrer … la section
:link refid=genresfile reftype=hd."Le fichier de genres":elink. pour plus
d'informations … ce sujet.
:li.Si un fichier n'a pas d'entr‚e pour le champ "Titre", &progname. peut
d‚sormais utiliser automatiquement le nom de fichier comme titre.
:li.&progname. peut prendre un nom de fichier (ou de r‚pertoire) comme :link
refid=cmdlineargs reftype=hd.paramŠtre de ligne de commande:elink., vous
permettant la sp‚cification du fichier … charger ou du r‚pertoire dans lequel
seront recherch‚s les fichiers … charger et ainsi que l'association de fichiers
MP3 … &progname. dans le bureau ‚lectronique.
:li.&progname. supporte … pr‚sent d'autres langues (enfin l'anglais et
l'allemand pour l'instant).
:li.Vous pouvez maintenant Glisser/D‚poser des fichiers ou r‚pertoires sur la
fenˆtre de &progname., celui-ci ajoutera alors les fichiers MP3 donn‚s et ceux
trouv‚s dans les r‚pertoires … la :link refid=filelist reftype=hd.liste de
s‚lection:elink..
:li.Vous pouvez ais‚ment lancer depuis &progname. votre lecteur de MP3 pr‚f‚r‚
avec le fichier en cours de s‚lection comme paramŠtre.
:li.Lors du passage d'un fichier … un autre, vous pouvez … pr‚sent sp‚cifier
que certaines informations attach‚es doivent ˆtre conserv‚es pour le prochain
fichier (pratique pour la gestion d'albums entiers).
:li.Quand un fichier est en lecture seule, &progname. peut faire en sorte
que les :link refid=taginfo reftype=hd.champs d'info. attach‚es:elink. soient
juste en lecture seule au lieu d'ˆtre d‚sactiv‚s ("gris‚s"). Ils ‚taient
quelque peu difficiles … lire parfois.
:li.Vous pouvez d‚sormais choisir entre trois styles d'avertissements
diff‚rents.
:li.Vous pouvez d‚sactiver l'avertissement pour les fichiers MP3 non valides.
:li.Le renommage automatique peut limiter les noms … 31 caractŠres maximum
(utile pour la cr‚ation de CD-ROM qui ne supportent que 31 carctŠres pour les
noms de fichier).
:li.Documentation en ligne ‚tendue et am‚lior‚e.
:li.Corrections de quelques bugs (fichier courant non ferm‚ lors de
l'utilisation de "Supprimer tout", petit bug dans la boŒte de dialogue de
s‚lection de r‚pertoire, plantage de &progname. lors de l'‚tablissement
de liste avec des genres non valides, ...)
:eul.

:dt.:hp2.Version 1.67:ehp2.
:dd.Les choses suivantes ont ‚t‚ chang‚es/ajout‚es&colon.
:ul compact.
:li.&progname. supporte maintenant aussi les tags ID3 v1.1.
:li.Vous pouvez … pr‚sent faire figurer la version, le layer, la fr‚quence,
le d‚bit ainsi que le mode dans la liste de sortie.
:li.Ajout de la fonction de renommage automatique (permet de renommer tous les
fichiers selon leurs titres).
:li.Vous pouvez utiliser des macro. dans le champ remarques pour y ins‚rer
automatiquement la dur‚e, etc..
:li.Vous pouver cacher (et r‚-afficher) les boutons et/ou le groupe
d'informations sur le fichier comme vous le d‚sirez.
:li.Fenˆtre de configuration, o— vous pouvez activer/d‚sactiver divers
messages d'avertissement.
:li.La couleur et les polices de la fenˆtre principale peuvent maintenant
ˆtre chang‚es ais‚ment par Glisser/D‚poser depuis la palette appropri‚e. Ces
valeurs seront aussi sauvegard‚es dans le fichier &inifile..
:li.Modification des ic“nes de &progname. pour coller aux ic“nes des fichiers
MP3 standard.
:li.Correction de quelques petits bugs.
:eul.

:dt.:hp2.Version 1.45:ehp2.
:dd.Je n'y crois pas! Il prend vie! Enfin c'est fait...
PremiŠre version publique!

:dt.:hp2.Version 1.44:ehp2.
:dd.Je dirais "v2.0"...
:ul compact.
:li.Le titre de la fenˆtre affiche maintenant le nom du fichier/r‚pertoire
trait‚ au lancement d'op‚rations globales ("Enregistrer tout", etc.).
:li.Ajout d'une option pour ne sortir vers la liste que les fichiers avec
info. attach‚es uniquement.
:li.Remplacement de ma propre entˆte MP3 (bizarre, incomplŠte et probablement
bugu‚e) grƒce au d‚codage d'une routine, tir‚e des sources de
:link refid=credits reftype=hd.mpg123/2:elink. (quelque peu modifi‚e).
:li.Restructuration interne de quelques parties du code.
:li.Correction de quelques bugs, ajouts de nouveaux, correction de ceux-ci...
:eul.

:dt.:hp2.Version 1.41:ehp2.
:dd.Pas de commentaire. Mais ils vont payer pour ‡a... (Ah ben non, puisque
c'est du freeware! ;-)
:ul compact.
:li.Ajout de la possibilit‚ de s‚lectionner automatiquement des fichiers
dans des (sous-)r‚pertoires.
:li.Ajout de la d‚tection et du support des fichiers en lecture seule.
:li.Ajout de l'option de dimensionnement  automatique des colonnes dans les
listes de fichiers MP3.
:eul.

:dt.:hp2.Version 1.34:ehp2.
:dd.Je crois que je vais essayer de me trouver des bˆta testeurs un peu moins
exigeants...
:ul compact.
:li.Ajout de s‚lection de fichiers dans de multiples r‚pertoires.
:li.Ajout de la possibilit‚ de mettre les noms de fichiers dans la liste de
sortie.
:li.Ajout d'une barre de menus (il y a … pr‚sent assez d'actions utilisateur
pour en justifier une...).
:li.Corrections d'un certain nombre de petits bugs.
:li.Ajout d'un num‚ro de version interne … &inifile. pour ‚viter des erreurs
possibles … l'utilisation d'un vieux fichier avec les nouvelles versions de
&progname..
:eul.

:dt.:hp2.Version 1.29:ehp2.
:dd.Une fois encore, les testeurs ont demand‚s … ce que soit ajout‚e une autre
fonction, et je l'ai donc fait.
Si ‡a continue, &progname. sera peut-ˆtre le premier programme … sortir avec
2.0 comme num‚ro de premiŠre version! ;-)
:ul compact.
:li.Ajout de la fonction de sortie vers fichier de la liste de s‚lection.
:li.Les options pour la liste sont aussi enregistr‚es dans &inifile..
:li.Correction d'un l‚ger bug concernant les boutons de la fenˆtre principale.
:eul.

:dt.:hp2.Version 1.16:ehp2.
:dd.Selon les voeux des testeurs et mes propres id‚es, les choses suivantes
ont ‚t‚ ajout‚es&colon.
:ul compact.
:li.S‚lection de fichiers multiples.
:li.Suppression d'info. attach‚es … de multiples fichiers en une seule fois.
:li.Ajout global d'info. attach‚es … de multiples fichiers en une seule fois.
:li.dition ais‚e de multiples fichiers un par un.
:li.Dernier r‚pertoire de travail (depuis lequel vous avez s‚lectionn‚ des
fichiers) et coordonn‚es de la position de la fenˆtre principale sauvegard‚es
dans &inifile. et restaur‚es au red‚marrage du programme.
:li.Ajout d'un script d'installation pour la cr‚ation de l'objet WPS de
&progname..
:eul.

:dt.:hp2.Version 1.00:ehp2.
:dd.Cette version n'‚tait qu'une version de bˆta-test et n'a jamais ‚t‚
rendue publique.

.*Ajout de... quelque chose (oui, c'est un secret)
.*:li.Lorsqu'il ex‚cute des travaux longs ("Enregistrer tout", "Renommer...",
.*etc.) &progname. affiche maintenant une fenˆtre de statut. De plus, ces
.*travaux ont … pr‚sent leur propre unit‚ d'ex‚cution (ou "thread").

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Bugs

:h2 id=bugs.Bugs connus
:p.Il n'y a pas de "v‚ritables" bugs connus pour le moment, les choses qui
suivent sont plus ou moins seulement des d‚sagr‚ments&colon.

:ul compact.
:li.Lors de la suppression de tous les fichiers de la liste de s‚lection, le
nom du fichier qui a ‚t‚ s‚lectionn‚ en dernier reste affich‚. Pour une raison
‚trange que j'ignore, le vidage de ce champ ne fonctionne pas (Mais ‡a
fonctionne par ailleurs! trange, je vous dis!).
:li.Je dois admettre que, comme la plupart de mes programmes, &progname. ne
fonctionnera pas non plus correctement lorsque des chemins de fichiers trŠs
longs (>255 caractŠres) devront ˆtre utilis‚s (pour le renommage automatique et
autres). Mais une telle "bˆte noire" ne s'est pas encore pr‚sent‚e jusqu'ici...
:li.Lors du changement du titre d'un fichier, le renommage automatique ne
renommera pas le fichier si les info. attach‚es n'ont pas ‚t‚ enregistr‚es
auparavant. Mais je ne sais pas si on peut r‚ellement appeler ‡a un bug.
:li.En utilisant l'option "Conservation" et en atteignant un fichier en lecture
seule, ou qui a une info. dans un champ et que "Conserver si l'info. n'est pas
d‚j… pr‚sente" est activ‚e, &progname. ne conservera pas l'info. du fichier
"original", mais utilisera l'info du fichier … partir de ce point.
:li.Les fenˆtres d'avertissement n'"h‚ritent" parfois pas de la couleur et des
polices de la fenˆtre principale.
:li.Le Glisser/D‚poser ne fonctionne que si vous d‚placez le ou les objets
vers un endroit de la fenˆtre principale qui n'est pas occup‚ par une
fenˆtre-fille (bouton, champ de donn‚es, etc.).
:li.L'option "Lecture" requiert l'usage d'un fichier de commandes CMD pour
lancer
le lecteur MP3.
:li.On m'a dit que ce qui suit a ‚t‚ corrig‚ dans WarpAMP (‡a se produisait
parcequ'il y avait deux sp‚cifications ID2v1.1 l‚gŠrement diff‚rentes)&colon.
La "playlist" de WarpAMP n'affiche parfois pas certains champs
d'information. Mais comme d'autres programmes (PM123 pour ne mentionner que
lui) affichent tout correctement et que je n'ai vraiment aucune id‚e de ce qui
pourrait ‚ventuellement clocher avec les info. attach‚es, je mets tout
simplement ‡a sur le compte de WarpAMP! ;-)
:eul.

.*-------------------------------------------------------------------------
.*fold00.*Future enhancements

:h2 id=future.Am‚liorations futures
:p.Ces fonctions feront (avec un peu de chance) partie de &progname. un
jour&colon.

:p.:hp2."Petits" trucs:ehp2.
:ul compact.
:li.Ajout de bouton/touches pour passer au fichier suivant/pr‚c‚dant dans
la liste.
:li.Permettre le couper/copier/coller des info. attach‚es de/vers le
presse-papier.
:eul.
:p.:hp2."Gros" trucs:ehp2.
:ul compact.
:li.Autoriser des m‚thodes de tri de fichiers diff‚rentes dans la liste de
s‚lection.
:li.Autoriser des ordres diff‚rents pour les champs d'informations pour la
sortie de la liste vers fichier.
:li.Fonction d'"historique" pour les champs de donn‚es attach‚es (i.e. vous
auriez une liste d‚roulante pour chaque champ, dans laquelle vous pourriez
choisir les n derniŠres entr‚es).
:li.Ajout d'une barre d'outils (un jour personnalisable) … la fenˆtre
principale.
:li.Ajout d'une barre de statut … la fenˆtre principale (pour remplacer
les fenˆtres d'avertissement).
:li.Support des Lyrics3/Lyrics3 v2.00.
:li.Permettre la lecture des info. attach‚es d'un fichier et l'attachement
automatique de celles-ci aux autres fichiers de la liste.
:li.Une fonction d'auto-remplissage des informations qui essaierait de
r‚cup‚rer autant de donn‚es que possible depuis les noms de fichiers et
autres, et qui g‚nŠrerait des informations … attacher au fichier … partir de
‡a.
:eul.
:p.:hp2."TrŠs gros" trucs:ehp2.
:ul compact.
:li.Ajout d'une base de donn‚es de MP3 … &progname., qui vous permettrait
de conserver ais‚ment une trace de vos fichiers MP3 avec leurs info.,
d'exporter des listes vers d'autres formats, et plus.
:li.Permettre la visualisation des tags ID3 v2.x.
:li.Permettre l'‚dition des tags ID3 v2.x.
:li.Ajouter une fonction pour acc‚der … une (ou plus) des bases de donn‚es
de CD existantes sur l'Internet … travers &progname..
:eul.
:p.Dites-moi quelles sont les fonctions qui d'aprŠs vous devraient avoir la
plus grande priorit‚, et quelles sont celles sans lesquelles vous pourriez
trŠs bien vivre...


.*-------------------------------------------------------------------------
.*fold00.*Files

:h1 id=files.Les fichiers
:p.Cette section vous informe au sujet des fichiers fournis avec &progname..

.*-------------------------------------------------------------------------
.*fold00.*The genres file

:h2 id=genresfile.Le fichier des genres
:p.C'est dans ce fichier que sont stock‚s les divers genres de musique.
:p.Normalement ce fichier s'appelle "genre.txt" mais vous pouvez donner
n'importe quel autre fichier en utilisant le champ d'entr‚e de la page
:link refid=misc reftype=hd.G‚n‚ral:elink. de la :link refid=settingswindow
reftype=hd.fenˆtre de configuration:elink..
:p.Vous pouvez ‚diter ce fichier avec un quelconque ‚diteur de textes, mais
avant de le faire, veuillez prendre note de ce qui suit:
:ul.
:li.Si vous changez le nom d'un genre, tous les fichiers qui pr‚sentaient ce
genre-ci auront le nouveau.
:li.Le deuxiŠme inconv‚nient de ceci est que vous serez probablement la seule
personne … utiliser cette nouvelle d‚finition des genres. Si quelqu'un d'autre
re‡oit un fichier MP3 avec cette d‚finition, il (ou elle) verra le nom de
l'"ancien" genre, ce que vous ne vouliez peut-ˆtre pas.
:li.Si vous inventez de nouveaux genres (i.e. si vous en ajoutez … la liste)
personne d'autre ne sera mis au courant. Si quelqu'un d'autre re‡oit un fichier
MP3 avec ces nouveaux genres, cela pourrait engendrer des erreurs ou du moins
une certaine confusion.
:eul.
:p.Le format par d‚faut pour le fichier des genres est celui propre …
&progname.&colon.
:xmp.
# Minta genre file - Fichier des genres de Minta
# Cette ligne ainsi que la pr‚c‚dente sont des commentaires.

Blues
Classic Rock
Country
Dance
 ...
:exmp.
:p.Le fichier est interpr‚t‚ ligne par ligne. Les commentaires (les lignes
commen‡ant par '#') et les lignes vides sont ignor‚es. Les autres lignes
sont prises comme noms de genres. Les genres sont ‚num‚r‚s dans l'ordre
dans lequel ils se trouvent (i.e. dans l'exemple ci-dessus, Blues serait 1,
Classic Rock 2 et ainsi de suite). Chaque ligne (et donc nom de genre) peut
faire jusqu'… 255 caractŠres de long.
:p.&progname. comprend aussi le format du fichier "genres.txt" de WarpAMP
(dans lequel chaque ligne est compos‚e de "nn nom", "nn" ‚tant le num‚ro et
"nom" le nom du genre correspondant).
En fait, vous pourriez mˆme m‚langer les deux formats et &progname. tentera
d'en tirer le meilleur, mais :hp1.ce n'est pas recommand‚:ehp1.!


.*-------------------------------------------------------------------------
.*fold00.*The player CMD-files

:h2 id=playercmdfiles.Les fichiers de commandes CMD pour le lecteur
:p.Ces fichiers permettent de lancer le lecteur MP3 de votre choix directement
… partir de &progname. en utilisant le fichier MP3 courant.
:p.Pour des raisons techniques, &progname. doit lancer le lecteur par
l'interm‚diaire d'un fichier CMD. Lancer directement le fichier EXE peut ne
pas fonctionner. J'espŠre pouvoir changer ‡a dans une prochaine version. Vous 
pouvez donner le nom du fichier CMD … utiliser dans la page :link refid=misc
reftype=hd.G‚n‚ral:elink. de la :link refid=settingswindow reftype=hd.fenˆtre
de configuration:elink..
:p.Vous modifierez le fichier correspondant au lecteur de votre choix pour le
faire correspondre … vos besoins (en gros, cela signifie juste que vous devrez
modifier l'unit‚ et le chemin d'installation).
:p.Sont inclus les fichiers suivants&colon.
:ul.
:li.gowamp.cmd - pour WarpAMP
:li.gopm123.cmd - pour PM123
:li.gompg123.cmd - pour mpg123
:eul.
:p.Si vous utilisez un lecteur diff‚rent, vous devriez pouvoir modifier
facilement l'un des fichiers existants (en fait ce sont quasiment tous les
mˆmes ;-) de maniŠre … le rendre utilisable avec votre lecteur.


.*-------------------------------------------------------------------------
.*fold00.*Disclaimer & legal stuff

:h1 id=disclaimer.Mentions l‚gales
:p.Voici les mentions l‚gales habituelles. Pour ceux d'entre vous qui ont
eu … les lire bien trop de fois, en voici juste une version all‚g‚e&colon.

:p."C'est pas ma faute! C'est pas moi, c'est l'autre qui a fait ‡a!" ;-)

:p.Pour les autres, veuillez lire et garder bien pr‚sent … l'esprit ce qui
suit&colon.

:p.Bien que ce programme ait ‚t‚ test‚ pas mal de fois, il se peut qu'il
reste un bon nombre de bugs dedans (mˆme des graves, bien que je ne le pense
pas). Ne m'en blƒmez pas si ce programme fiche en l'air vos fichiers ou quoi
que ce soit.

:p.:hp2.VOUS UTILISEZ CE PROGRAMME · VOS RISQUES ET PRILS!:ehp2. Je me d‚gage
de toute responsabilit‚ pour les dommages, les problŠmes, les conflits
matrimoniaux, etc. r‚sultant de l'utilisation, de la mauvaise utilisation,
de l'incapacit‚ … utiliser, de la possesion ou de la non-possession de ce
programme, directement ou indirectement.
Je ne vous donne pas non plus la garantie d'une ex‚cution sans erreur, d'un
usage dans un but sp‚cifique ou d'un comportement normal du programme vis-…-vis
des animaux, des programmeurs et des enfants en bas ƒges.

:p.LE LOGICIEL EST FOURNI "TEL QUEL" ET SANS AUCUNE GARANTIE EXPLICITE OU
IMPLICITE, Y COMPRISES, SANS LIMITATION, LES GARANTIES IMPLICITES DE VALEUR
MARCHANDE ET D'USAGE DANS UN BUT PARTICULIER. LA QUALIT ET LES PERFORMANCES
DE L'EXCUTION DU PROGRAMME EST SOUS VOTRE ENTIÔRE RESPONSABILIT. EN CAS
DE DFECTION DU PROGRAMME, VOUS ASSUMEREZ LE COêT DE TOUS LES ENTRETIENS,
RPARATIONS OU CORRECTIONS NCESSAIRES.

:p.En quelques mots&colon.
Si ‡a marche, je suis responsable.
Si ‡a foire, c'est de votre faute. ;-)

:p.Vous avez la permission de redistribuer l'archive de ce programme dans sa
forme complŠte et non modifi‚e, gratuitement, sans autre profit que le prix du
media sur lequel sera faite la distribution. Exception … la derniŠre
rŠgle&colon. l'archive peut ˆtre incluse dans les collections de
freewares/sharewares sur CD-ROM ainsi que sur les couvertures de CD-ROM des
magazines.

:p.Toutes les marques cit‚es ici sont les propri‚t‚s de leurs soci‚t‚s
respectives...

:p.(Bizarre, cette section devient de plus en plus grande de programmes en
programmes... &colon.-)


.*-------------------------------------------------------------------------
.*fold00.*Author & Minta homepage

:h1 id=author.Informations sur l'auteur et &progname.
:p.:hp7.Auteur:ehp7.

:dl break=all tsize=5 compact.

:dt.:hp2.Adresse postale:ehp2.
:dd.Thorsten Thielen c/o Sascha Weber, Postfach 3928, 54229 Trier, Allemagne

:dt.:hp2.Adresse ‚lectronique:ehp2.
:dd.&email1.
.*(utiliser celle-ci de pr‚f‚rence bien que &email2. soit
.*toujours valide)

:dt.:hp2.WWW:ehp2.
:dd.&www.

:edl.

:artwork name='src/data/teamlogo.bmp' align=center.
:p.Membre -et fier de l'ˆtre- de la Team OS/2 de la r‚gion de Trier
(:hp1.www.teamos2.ipcon.de:ehp1.), les auteurs du
fameux CD-ROM "Team Trier Collection".

:lm margin=1.
:p.Les suggestions et rapports de bugs sont toujours les bienvenus. Quoique...
les rapports de bugs ne sont peut-ˆtre pas :hp1.si:ehp1. bienvenus que
‡a... ;-)
:p.
.br
:hp7.Page WWW de &progname.:ehp7.
:p.Visitez la page WWW de &progname. pour obtenir des informations et les
nouvelles version&colon. &www./minta


.*-------------------------------------------------------------------------
.*fold00.*Help wanted!
:h1 id=helpwanted.On demande de l'aide!
:p.Maintenant que &progname. supporte d'autres langues, j'aimerai bien
‚videmment qu'il y en ait le plus possible. Le problŠme est que je ne parle
suffisamment bien que l'anglais et l'allemand pour r‚aliser une traduction
&colon.-). Donc si quelqu'un veut traduire &progname. dans une nouvelle langue,
il (ou elle) sera le (la) bienvenu(e)!

:p.J'ai inclus la source du fichier d'aide ainsi que celle des ressource du
programme dans une archive ZIP … part ('language.zip'). Vous n'avez qu'…
prendre les fichiers *.rc et *.hlp de votre choix et hop! au travail!
&colon.-) Si vous avez des questions, n'h‚sitez pas … :link refid=author
reftype=hd.me contacter:elink.!

:p.Si nous n'avez pas trop le temps (ou que vous n'avez pas envie ;-) de
faire une traduction "complŠte" (i.e. programme et aide en ligne) vous
pouvez aussi bien traduire seulement les ressources du programme (menus,
messages des boŒtes de dialogue et autres). Cela sera d‚j… une grande aide...


.*-------------------------------------------------------------------------
.*fold00.*Credits

:h1 id=credits.Remerciements
:p.J'aimerai remercier les personnes suivantes, pour leur aide et leur support
dans la r‚alisation de &progname.&colon.

:ul.
:li.Merci … :hp1.Sascha Weber:ehp1. et :hp1.Dirk Riemekasten:ehp1. pour avoir
si bien bˆta test‚ &progname. (et de m'avoir forc‚ … coups de botte au c*l
… ajouter de nouvelles fonctionnalit‚s … chaque fois ;-).
:li.Grands remerciements aussi … l':hp1.‚quipe de mpg123:ehp1. pour avoir
‚crit ce lecteur MP3 et pour avoir inclus les sources, afin que je puisse y
pomper la routine de d‚codage d'entˆtes MP3! C'est franchement bien mieux que
ce j'aurai pu ‚crire... (Vous pourrez en savoir plus sur mpg123 en allant sur
http&colon.//www.sfs.nphil.uni-tuebingen.de/~hipp/mpg123.html).
:li.Ce programme utilise quelques morceaux de code de "MemSize", le
moniteur de ressources systŠme de :hp1.Richard Papo:ehp1. (Vous pourrez en
savoir plus sur MemSize en allant sur http&colon.//www.msen.com/~rpapo).
:li.Mes remerciements particuliers … tous ceux qui ont traduit &progname.
dans d'autres langues&colon.
:ul.
:li.Mille mercis … :hp1.Luc Van Bogaert:ehp1. pour la version suisse.
:li.Mille mercis … :hp1.Guillaume Gay:ehp1. pour la version francais.
:li.Mille mercis … :hp1.Jostein Ullestad:ehp1. et 
:hp1.H†vard Mork:ehp1. pour la version (Norwegian).
:li.Mille mercis … :hp1.Cyrill Vakhneyev:ehp1. pour la version (Russian).
.*FIXME
:li.Many thanks to :hp1.Michael Baryshnikov:ehp1. for finding lots of bugs!
:li.Special thanks to :hp1.Alberto Gabrielli:ehp1., not only for the
Italian translation of the program and the online help but also for finding
and notifying me of many, many bugs and inconsistencies!
:eul.
:li.Merci aussi … tous les utilisateurs qui m'ont trouv‚ les bugs, fait des
suggestions ou juste envoy‚ un courrier ‚lectronique au sujet de &progname.!
:eul.


.*-------------------------------------------------------------------------
.*fold00.*Registering
:h1 id=register."Licence"
.*:p.Si vous ˆtes satisfaits avec ce que &progname. 1.67 offre, vous ˆtes
.*libres d'utiliser cette version... mais sachez qu'il n'aura pas les
.*nombreuses et utiles fonctionnalit‚s pr‚sentes dans les nouvelles versions,
.*et qu'il n'est plus du tout support‚!
:p.Vous pouvez acqu‚rir une licence utilisateur de &progname. (&version.) en
m'envoyant juste :link refid=author reftype=hd.un courrier ‚lectronique (une
carte postale ou quoi que ce soit):elink.. C'est mˆme obligatoire si vous
utilisez &progname. (plus d'une fois par an environ ;-). Vous n'avez qu'…
‚crire quelque chose comme "Hi, I use your program &progname.!" ("Salut!
J'utilise &progname.!") et je serai content. Si vous :hp1.ne:ehp1. voulez
:hp1.pas:ehp1. ˆtre inclus dans la liste de publipostage pour recevoir des
nouvelles de &progname., n'oubliez pas de me le faire savoir!

:p.Mais je suppose qu'il y en a pas mal d'entre vous qui ont vu &progname.,
qui travaillent avec, mais qui ne veulent pas acqu‚rir de licence en
m'envoyant un petit mail. Eh bien, pour vous, voici... 

:p.:hp2.Les 10 principales raisons de ne pas acqu‚rir la licence de
&progname.:ehp2.

:ul compact.

:li.Personnellement, je trouve que &progname. est franchement nul. Je n'aime
pas la couleur des fenˆtres (et encore moins l'id‚e de pouvoir les changer
comme je veux!), je ne parle aucune des langues support‚es, et j'ai entendu
dire qu'on a trouv‚ des bugs dedans! Sans parler du support de m****&colon.
‚crire un e-mail pour obtenir de l'aide, c'est vraiment trop compliqu‚.

:li.Je suis tout-…-fait satisfait avec tout ce que &progname. 1.67 m'offre.
J'essaierai moi-mˆme de circonvenir aux bugs qui se pr‚senteront peut-ˆtre.
Je n'utiliserai jamais les fonctions "Glisser/D‚poser", les possibilit‚s de
remplissage automatique des informations attach‚es ou les trucs de bases de
donn‚es. Et l'ID3 v2.x va bien au-del… de mes besoins de toutes fa‡ons. Alors
‚pargnez-moi vos propositions de mises-…-jour...

:li.Qui se soucie de recevoir des nouvelles des derniŠres versions sorties?
Pourquoi devrais-je souscrire … une liste de publipostage de plus? Ma
boŒte aux lettres ‚lectroniques est d‚j… d‚bord‚e en temps normal, et je
v‚rifie quotidiennement le r‚pertoire "incoming" de Hobbes de toutes maniŠres!

:li.Je n'ai pas de temps … perdre … t'‚crire un mail! Tu vois, j'ai un boulot,
une femme, 10 gosses et j'en passe, une petite amie, une voiture, une maison,
une piscine priv‚e et des milliers de fichiers MP3 … renseigner, alors j'ai
de quoi m'occuper jour et nuit. Et je ne veux pas penser … ce que j'ai pu
perdre pendant ces 5 minutes que viens de perdre...

.*:li.$10 c'est bien de trop pour un programme! Avec ‡a, je pourrais m'acheter
.*la moiti‚ d'un CD audio, je pourrais sortir dŒner avec ma petite amie (bon,
.*nous aurions quand mˆme mang‚ avant), je pourrais faire des milliers
.*d'autres trucs...

:li.Pourquoi devrais-je vous faire croire que c'est bien de d‚velopper des
logiciels sous OS/2? Il y en a d‚j… beaucoup trop pour OS/2, et il n'est pas
dans notre int‚rˆt de submerger le march‚ n'est-ce pas?

:li.Il y a plein d'autres programmes qui en font autant! Bon, d'accord, il
n'ont peut-ˆtre pas une interface PM aussi sympa., ils n'ont peut-ˆtre pas
toutes les fonctionnalit‚s qu'offre &progname. et il n'en existe peut-ˆtre que
deux ou trois, mais au moins je n'ai pas … passer des heures et des heures …
‚crire des courriers ‚lectroniques qui n'en finissent plus aux auteurs!

:li.Je trouve que ‡a ne sert … rien de supporter le concept du mailware.
Les d‚veloppeurs qui refilent des programmes complŠtement utilisables et
espŠrent en fait qu'on leur enverra un message ‚lectronique si on utilise leur
programme alors qu'on peut trŠs bien ne pas le faire, sont tous une bande
d'imb‚ciles trop cr‚dules!

:li.Pourquoi devrais-je ne serait-ce qu'essayer de supporter les logiciels
pour OS/2? OS/2 est mort, c'est bien connu! "Je suis Bill Gates de MicroBorg.
Cet OS sera assimil‚. Tout d‚veloppement est futile."

:li.J'ai fait la traduction dans une autre langue et j'ai d‚j… envoy‚ un
message avec les fichiers traduits &colon.-)

:li.Je ne peux pas ‚crire! Je ne sais pas comment envoyer des courriers
‚lectroniques!! Je n'ai pas d'accŠs … l'Internet!!! Et j'utilise Windows!!!!

:eul.


.*-------------------------------------------------------------------------
.*fold00.*Dedication

:h1 id=dedication.D‚dicace
:p.&progname. est d‚di‚ … :hp1."Hackers":ehp1., probablement le plus mauvais
film sur l'informatique, la technologie de l'information et le monde des
hackers qui ait ‚t‚ jamais fait. Une bonne com‚die en fait, j'‚tais mort de
rire pendant la moiti‚ du temps (enfin... quand je n'‚tais pas en train de
pleurer pendant l'autre moiti‚ du temps).

:p.Note 1&colon. je parie que "da Vinci" aurait ‚croul‚ n'importe quel systŠme
rien que par sa demande en ressources...
:p.Note 2&colon. ils auraient peut ˆtre d– appeler ce :hp1.film:ehp1. "La
peste"?

:p.Bien-s–r que non, que ce n'est pas … ‡a que &progname. est d‚di‚...

:p.:artwork name='src/data/godzilla.bmp' align=center.
:hp2.
.ce Cette version de &progname. est d‚di‚e … Godzilla.
:ehp2.

.*-------------------------------------------------------------------------
.*fold00.*There's more where that came from ...
:h1 id=moreprogs.Et il n'y a pas que ‡a...
:p.&progname. n'est pas le seul programme pour OS/2 que j'ai ‚crit. Voici
une petite liste d'autres programmes :hp1.disponible gratuitement:ehp1.
faits de mes mains&colon.

:dl break=all tsize=5.

:dt.:hp2.Gotcha!:ehp2. (Programme de capture d'‚cran)
:dd.Capture les fenˆtres, l'int‚rieur des fenˆtres, l'‚cran (ou une partie).
Contr“l‚ par temporisateur, automatiquement ou … intervalles r‚guliers.
Enregistrement vers un fichier ou le presse-papier, etc..

:dt.:hp2.Wanda:ehp2. (Des "Post'It" pour le bureau ‚lectronique)
:dd.Des fenˆtres de notes de toutes les couleurs, tailles, etc.. Grand nombre
d'options de configuration. Impression, sauvegarde, etc..

:dt.:hp2.Carrie R. Lust:ehp2. (Co–ts t‚l‚phonique/temps de connection)
:dd.11 valeurs disponibles (et configurables). 4 modes d'avertissements
(configurables). Rapports g‚n‚r‚s pour toutes les connexions, etc..

:dt.:hp2.Xened:ehp2. (Editeur "Xenon II")
:dd.dition des prix des armes, ‚dition des cartes, trucs et astuces, etc..
Aussi disponible pour DOS et Linux.

:dt.:hp2.CAD/Off:ehp2. ("D‚sactiveur de r‚amor‡age")
:dd.D‚sactive la combinaison de touches CTRL-ALT-DEL jusqu'… l'arrˆt du
systŠme.

:dt.:hp2.Tomo:ehp2. (Clone de Tetris)
:dd.Plus de briques, taille du terrain de jeux configurable, etc..
Malheureusement seulement disponible sous DOS et seulement en allemand (j'ai
perdu les sources...).

:edl.
:p.En plus des programmes cit‚s ici, j'en ai d'autres en cours de d‚veloppement
(et mˆme des jeux!). Si vous voulez obtenir plus d'informations
… ce sujet, allez donc jeter un oeil sur &www./projects.html!


.*-------------------------------------------------------------------------

:euserdoc.
