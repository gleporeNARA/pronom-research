:userdoc.

.im src\common.ipf

.*-------------------------------------------------------------------------
.*fold00.*Over dit programma

:h1 id=about res=1000.Over dit programma
:fn id=mp3.
:p.MP3 is een formaat voor het coderen van geluidsdata (songs, muziekstukken, enz.)
waarmee een grote hoeveelheid data gecodeerd kan worden in een beperkt aantal bytes 
(d.w.z. met een zeer goede compressieverhouding).
:efn.

:fn id=tag.
:p.Een MP3-bestand kan een zgn. "ID3-tag" aanhangsel hebben. Dit stukje 
data aan het einde van het bestand bevat bijkomende informatie over het 
geluidsfragment in kwestie&colon. Titel, Artiest, Album, Jaar, Opmerking, Genre
(soort muziek) en Tracknummer (ID3 v1.1). Vele MP3-spelers kunnen deze informatie 
afbeelden.
:efn.

.*-------------------------------------------------------------------------

:artwork name='src/data/minta.bmp' align=center.
:p.Attention&colon. This version of the documentation may be outdated or
incomplete. If you think you missed something, see the English or German
version!

:p.Dit programma geeft u informatie over :link refid=mp3
reftype=fn.MP3:elink. geluidsbestanden en laat toe een informatieve :link refid=tag
reftype=fn.ID3-tag:elink. aan deze bestanden toe te voegen.


:p.Met &progname. kunt u de tag van 1 afzonderlijk bestand bewerken, maar
ook van meerdere bestanden na elkaar of zelfs tegelijkertijd.

:p.Bovendien kunt u de tags van een of meerdere bestanden verwijderen en die
bestanden ook automatisch laten hernoemen.

:p.Het programma kan ook een lijst maken van uw MP3-bestanden, met daarin voor
elk bestand de volledige informatie of enkel de gegevens die u zelf selecteert.

:p.:hp2.Nieuwigheden:ehp2.

:p.Raadpleeg de :link refid=history reftype=hd.versiehistoriek:elink. voor  
wijzigingen en nieuwe mogelijkheden in deze versie van het programma.

:p.Merk op dat het programma in de toekomst zeker nog uitgebreid kan (en zal) worden.
Stuur me uw suggesties over welke uitbreidingen u graag zou willen hebben ... 
(ik beloof echter niets ;-).

:p.:hp2.Registratie:ehp2.

:p.&progname. is mailware. Stuurt u me daarom een kort berichtje (een aanzichtkaart 
of iets anders dat u leuk vindt) als u &progname. gebruikt! (zie ook :link
refid=register reftype=hd."De 10 voornaamste redenen om &progname. niet te registreren"
:elink.;-)



.*-------------------------------------------------------------------------
.*fold00.*De vensters

:h1 id=windows res=2000.De vensters
:p.Dit gedeelte beschrijft de verschillende vensters van &progname., welke  
functie ze hebben en hoe u ze kunt gebruiken.


.*-------------------------------------------------------------------------
.*fold00.*Het hoofdvenster

:h2 id=mainwindow res=2100.Het hoofdvenster
:p.Het hoofdvenster zult u wellicht het meest gebruiken. 
Hierin kunt u de tags van bestanden wijzigen en bestandsinformatie raadplegen.

:p.Het hoofdvenster bevat de volgende delen&colon.
:ul compact.
:li.:link refid=filelist reftype=hd.Lijst van geselecteerde bestanden:elink.
:li.:link refid=fileinfo reftype=hd.Bestandsinformatie:elink.
:li.:link refid=taginfo reftype=hd.Tag-informatie:elink.
:li.:link refid=buttons reftype=hd.Knoppen en menubalk:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*Lijst van geselecteerde bestanden

:h3 id=filelist res=2110.Lijst van geselecteerde bestanden
:p.Deze lijst bevat de geselecteerde bestanden, d.w.z. bestanden die u kunt gaan bewerken.

:dl break=all tsize=5.

:dt.:hp2.Bestanden aan de lijst toevoegen:ehp2.
:dd.U kunt op verschillende manieren bestanden aan de lijst toevoegen&colon.
:ul.

:li.Gebruik het dialoogvenster door op de knop "Openen..." te klikken,
of door "Openen..." te kiezen in het menu "Bestand".

:li.U kunt &progname. :hp1.zelf bestanden laten zoeken :ehp1., door "Automatisch openen..." 
in het menu "Bestand" te kiezen. Er verschijnt dan een :link refid=autoopenwindow
reftype=hd.directory dialoogvenster:elink., waarin u aangeeft in welke directory 
naar MP3-bestanden gezocht moet worden.

:p.:hp1.Opmerking&colon.:ehp1. Alle subdirectories van de geselecteerde directory worden 
eveneens doorzocht.

:li.Via drag 'n drop kan u bestanden en/of directories direct in het hoofdvenster van 
&progname. slepen. De bestanden worden aan de lijst toegevoegd, terwijl in de directories 
gezocht wordt naar MP3-bestanden.
:eul.

:dt.:hp2.Bestanden uit de lijst verwijderen:ehp2.
:dd.U kunt op verschillende manieren bestanden uit de lijst verwijderen&colon.
:ul.
:li.Typ ALT+'s' om het huidige bestand uit de lijst te verwijderen of kies "Sluit huidig"
in het menu "Bestand".

:li.Kies "Sluit alle" in het menu "Bestand" om alle bestanden uit de lijst te verwijderen.
:eul.

:edl.
:p.Algemene bewerkingen op tags zoals "Bewaar alle" of "Verwijder alle" worden  
uitgevoerd op al de bestanden in de lijst.

:p.Enkelvoudige bewerkingen op tags zoals "Bewaar" of "Verwijder" zijn alleen van 
toepassing op het bestand dat op dat moment geselecteerd is.

:p.De titel van dit gedeelte in het hoofdvenster geeft aan hoeveel bestanden de lijst bevat.

:p.Met ALT+'g' (of "Bewaar &amp. volgende" in het menu "Tag") bewaart u 
de huidige tag en wordt het volgende bestand in de lijst automatisch geselecteerd.
Met ALT+'r' (of "Bewaar &amp. vorige" in het menu "Tag")
doet u net hetzelfde, maar nu wordt het vorige bestand in de lijst geselecteerd.
Zo kunt u snel meerdere bestanden na elkaar bewerken.


.*-------------------------------------------------------------------------
.*fold00.*Bestandsinformatie

:h3 id=fileinfo res=2120.Bestandsinformatie
:p.Dit deel van het hoofdvenster toont (technische) informatie over het 
huidige MP3-bestand. Deze informatie komt rechtstreeks uit de hoofding van 
het bestand en kan niet gewijzigd worden.

:dl break=all tsize=5.

:dt.:hp2.Versie:ehp2.
:dd.Dit veld toont de :hp1.versie:ehp1. van het MP3-bestand.

:dt.:hp2.Layer:ehp2.
:dd.Dit veld toont de :hp1.layer:ehp1. (1, 2 or 3) van het MP3-bestand.

:dt.:hp2.Frequentie:ehp2.
:dd.Dit veld toont de :hp1.sampling-frequentie:ehp1. of :hp1.sampling
rate:ehp1. van het MP3-bestand.

:dt.:hp2.Bitrate:ehp2.
:dd.Dit veld toont de :hp1.bitrate:ehp1. van het MP3-bestand. Aan de hand van de bitrate
bepaalt de MP3-speler hoeveel bits per seconde gedecodeerd moeten worden.

:dt.:hp2.Modus:ehp2.
:dd.Dit kan stereo, joint stereo, dual channel of mono (single channel) zijn.
Vraag me alsjeblieft niet wat joint stereo of dual channel precies betekenen &colon.-)

:dt.:hp2.Speelduur:ehp2.
:dd.De geschatte speelduur van het MP3-bestand. Dit wordt berekend aan de hand van 
de bitrate en de omvang van het bestand.

:dt.:hp2.Emphasis:ehp2.
:dd.Wordt tegenwoordig weinig gebruikt. Heeft te maken met ruisreductie ...

:dt.:hp2.Privaat:ehp2.
:dd.Dit geeft aan of het al dan niet om een privaat MP3-bestand gaat - wat dat ook moge betekenen.

:dt.:hp2.Copyright:ehp2.
:dd.Dit geeft aan of er een copyright op het MP3-bestand rust.

:dt.:hp2.Origineel:ehp2.
:dd.Dit geeft aan of het om een origineel MP3-bestand gaat, of om een kopij. Ik heb geen idee  
wat het nut van deze informatie is, evenmin door wie dit eigenlijk bepaald wordt...

:dt.:hp2.CRCs:ehp2.
:dd.Dit geeft aan of het MP3-bestand een bepaald type van foutdiagnose bevat.

:dt.:hp2.Padding:ehp2.
:dd.Dit geeft technische informatie weer in verband met het formaat van het MP3-bestand.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Tag-informatie

:h3 id=taginfo res=2130.Tag-informatie
:fn id=boc.
:p.Uit het album "Imaginos" van Blue &Oe.yster Cult.
:efn.
:fn id=sid.
:p.citaat uit "Shut it down" van Mot&oe.rhead's album "Iron fist".
:efn.
.*-------------------------------------------------------------------------
:p.Dit deel van het hoofdvenster toont u de informatie die in de ID3-tag van 
het bestand opgeslagen zit. U kunt deze informatie naar eigen smaak wijzigen 
(of u kunt ook nieuwe gegevens toevoegen, indien het bestand aanvankelijk 
geen tag had). Natuurlijk lukt dit alleen wanneer het bestand overschreven kan  
worden (vb. het read-only attribuut is actief of het bestand staat op CD-ROM).

:p.:hp1.Opmerking&colon.:ehp1. De lengte van de velden is bepaald in de ID3-tag
specificatie. Maak mij dus geen verwijten als je er maar niet in slaagt :link
refid=boc reftype=fn."The siege and investiture of Baron von Frankenstein's
castle at Weisseria":elink. volledig in het titelveld te krijgen ...

:dl break=all tsize=5.

:dt.:hp2.Titel:ehp2.
:dd.De songtitel (of de titel van het geluidsfragment welke het bestand ook
moge bevatten).
Kan tot 30 tekens bevatten.

:dt.:hp2.Artiest:ehp2.
:dd.Mozart, Black Sabbath, Bananarama, een blaffende kat ... u begrijpt wat ik bedoel.
Kan tot 30 tekens bevatten.

:dt.:hp2.Album:ehp2.
:dd.Het album waarop deze song (of wat het ook moge zijn) staat. U kunt dit veld ook 
leeg laten, als het bestand niet aan een welbepaald album verbonden is. 
Ook dit veld kan tot 30 tekens bevatten.

:dt.:hp2.Jaar:ehp2.
:dd.Wanneer de song werd opgenomen of uitgebracht, wanneer hij voor het eerst op nummer 1 
in de top 20 stond, of andere informatie die u nuttig lijkt - naast cijfers kunt u ook  
letters gebruiken. Bepaal dus zelf waarvoor u dit veld gebruikt ... 
U kunt hier tot 4 tekens ingeven.

:dt.:hp2.Genre:ehp2.
:dd.Om welke soort van muziek het gaat. Kies een genre uit de uitgebreide lijst. 
Ik weet niet wie deze genres "uitvindt", maar ze zijn alleszins algemeen aanvaard.
Vraag me dus niet om genres aan de lijst toe te voegen of ze eruit te verwijderen. U kunt 
de lijst echter ook zelf wijzigen (zie ook :link refid=genresfile reftype=hd."Het genres 
bestand":elink.).

:dt.:hp2.Opmerking:ehp2.
:dd.In dit veld kunt u een opmerking invullen. Uiteraard niet over dit programma, maar over 
het MP3-bestand. En zoals steeds, maximaal 30 tekens (slechts 28 als u "Track #" gebruikt).
(:link refid=sid reftype=fn.I just wanna shut it down:elink.).
:p.:hp1.Opmerking&colon.:ehp1. U kunt in dit veld macro's gebruiken, die automatisch 
door hun overeenkomstige waarde vervangen worden, wanneer de tag bewaard wordt
(dit werkt ook bij "Bewaar alle")&colon.
:ul compact.
:li.$T - Titel
:li.$A - Artiest
:li.$a - Album
:li.$Y - Jaar
:li.$G - Genre
:li.$v - MPEG versienummer
:li.$l - Layer van het bestand
:li.$t - Geschatte speelduur
:li.$m - Modus
:li.$f - Frequentie
:li.$b - Bitrate
:li.$r - Track
:eul.
:p.:hp1.Voorbeeld&colon.:ehp1. Wanneer u hier "Speelduur=$t, Modus=$m" invult en de 
tag nadien bewaart, zal de opmerking er ongeveer als volgt uitzien 
"Speelduur=03&colon.14, Modus=Stereo".


:dt.:hp2.Track #:ehp2.
:dd.Hier kunt u het tracknummer van de song invullen (in geval deze van een 
CD komt of iets dergelijks).
:p.:hp1.Opmerking&colon.:ehp1. Dit veld is een uitbreiding op ID3 v1.0 (nl. v1.1).
Als u hier 0 invult, wordt het een v1.0 tag, vult u een andere waarde in, 
dan wordt het een v1.1 tag. Het tracknummer wordt opgeslagen in de laatste 2 bytes 
van het Opmerking-veld, zodat dit veld maximaal 28 tekens kan bevatten.
De opmerking wordt afgebroken op 28 tekens, als u reeds 29 of 30 tekens 
gebruikt had.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*Knoppen en menubalk

:h3 id=buttons res=2140.Knoppen en menubalk
:dl break=all tsize=5.
:dt.:hp2.Openen...:ehp2.
:dd.Hiermee opent u een dialoogvenster, waarin u de bestanden kunt aanduiden die u 
wenst toe te voegen aan de :link refid=filelist reftype=hd.lijst van geselecteerde 
bestanden:elink..

:dt.:hp2.Automatisch openen...:ehp2. (enkel via menu)
:dd.Hiermee opent u een :link refid=autoopenwindow reftype=hd.directory
dialoogvenster:elink., om de directory aan te duiden waarin bestanden gezocht moeten 
worden om aan de :link refid=filelist reftype=hd.lijst van geselecteerde bestanden:elink.
toe te voegen. Subdirectories worden eveneens doorzocht.

:dt.:hp2.Sluit huidig:ehp2. (enkel via menu)
:dd.Deze optie verwijdert het huidige bestand uit de :link
refid=filelist reftype=hd.lijst van geselecteerde bestanden:elink..

:dt.:hp2.Sluit alle:ehp2. (enkel via menu)
:dd.Deze optie verwijdert alle bestanden uit de :link
refid=filelist reftype=hd.lijst van geselecteerde bestanden:elink..

.*:dt.:hp2.Hernoem alle:ehp2. (enkel via menu)
.*:dd.Deze functie geeft alle bestanden automatisch de naam van hun Titel.
.*:p.Spaties en andere tekens in de Titel die niet toegelaten zijn in HPFS-bestandsnamen
.*("*", "?", enz.) worden vooraf vervangen door "_". Als er al een bestand met 
.*dezelfde naam bestaat, wordt "_n" aan de toegevoegd, waarbij n een uniek 
.*nummer is. Bestanden zonder tag of met een leeg Titel-veld, worden niet hernoemd.
.*:p.Deze functie werkt niet (d.w.z. geeft een foutmelding) wanneer de bestandsnaam
.*te lang zou worden voor het bestandssysteem (vb. op een FAT-drive waar een bestandsnaam 
.*maximaal 8 tekens kan bevatten).

:dt.:hp2.Hernoem...:ehp2. (enkel via menu)
:dd.Hiermee opent u het :link refid=renamewindow reftype=hd.hernoemen dialoogvenster:elink., 
waarmee u door middel van een als patroon (inclusief macro's) te gebruiken 
template, bestanden automatisch kunt hernoemen.

:dt.:hp2.Lijst...:ehp2.
:dd.Hiermee opent u het :link refid=listwindow reftype=hd.lijst dialoogvenster
:elink., om een lijst van de geselecteerde bestanden samen te stellen.
U kunt hierbij precies aangeven welke tag-informatie de lijst voor elk bestand 
dient te bevatten.

:dt.:hp2.Afsluiten:ehp2.
:dd.Zoals u wellicht hebt geraden, wordt het programma hiermee beâindigd. Bewaar vooraf de 
gegevens die u wenst te behouden, aangezien het programma eindigt zonder bevestiging te
vragen.

:dt.:hp2.Bewaar (huidig):ehp2.
:dd.Hiermee bewaart u de gegevens in de :link refid=taginfo reftype=hd."tag-informatie"
velden :elink. als tag voor het huidige bestand.

:dt.:hp2.Bewaar &amp. volgende:ehp2. (enkel via menu)
:dd.Hiermee bewaart u de huidige tag en wordt automatisch het volgende bestand in de 
lijst geselecteerd.

:dt.:hp2.Bewaar &amp. vorige:ehp2. (enkel via menu)
:dd.Hiermee bewaart u de huidige tag en wordt automatisch het vorige bestand in de 
lijst geselecteerd.

:dt.:hp2.Bewaar alle:ehp2.
:dd.Hiermee bewaart u de gegevens in de :link refid=taginfo reftype=hd."tag-informatie
velden:elink. als tag voor al de bestanden in de :link
refid=filelist reftype=hd.lijst van geselecteerde bestanden:elink..
:p.Wanneer u een of meer velden leeg laat (en ik bedoel 
:hp1.leeg:ehp1., geen spaties, niets!) blijft de inhoud van dit veld ongewijzigd
voor bestanden die reeds tag-informatie in dit veld hadden.
Vult u "(none)" in bij het genre, dan levert dit ook voor dit veld hetzelfde resultaat op.

:dt.:hp2.Verwijder (huidig):ehp2.
:dd.Hiermee verwijdert u de tag van het huidige bestand - in geval het 
bestand een tag had (zoniet kunt u deze optie niet selecteren). Dit is echter geen  
geschikte optie om schijfruimte te besparen, aangezien u de bestanden hiermee slechts 
128 bytes kleiner maakt.

:dt.:hp2.Verwijder alle:ehp2.
:dd.Hiermee verwijdert u de tags van alle bestanden in de :link refid=filelist
reftype=hd.lijst van geselecteerde bestanden:elink.. Wees voorzichtig hiermee!

:dt.:hp2.Speel bestand:ehp2. (enkel via menu)
:dd.Hiermee start u de gewenste MP3-speler met het huidige bestand.
Zie :link refid=playercmdfiles reftype=hd.De speler CMD-bestanden:elink. voor meer
informatie.

:dt.:hp2.Toon knoppen:ehp2. (enkel via menu)
:dd.Hiermee kunt u de knoppen aan de rechterkant van het hoofdvenster al dan niet verbergen.

:dt.:hp2.Toon bestandsinformatie:ehp2. (enkel via menu)
:dd.Hiermee kunt u het gedeele :link
refid=fileinfo reftype=hd.bestandsinformatie:elink. in het hoofdvenster 
al dan niet verbergen.

:dt.:hp2.Help inhoud:ehp2. (enkel via menu)
:dd.Dit toont u de inhoud van het helpbestand.

:dt.:hp2.Help algemeen:ehp2.
:dd.Hiermee opent u dit helpbestand. Ik veronderstel dat u dit reeds wist ;-)

:dt.:hp2.Info / Productinformatie:ehp2.
:dd.Hiermee opent u een dialoogvenster met informatie over de versie van 
&progname. die u momenteel gebruikt, en hoe u de auteur van het programma
kunt kontakteren.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Het instellingenvenster

:h2 id=settingswindow res=2200.Het instellingenvenster
:p.Dit venster laat u toe diverse programmainstellingen te wijzigen, zoals 
&progname. bepaalde gebeurtenissen te laten melden (vb. wanneer bestanden 
toegevoegd werden aan de :link refid=filelist reftype=hd.lijst van geselecteerde bestanden:elink.)
of de taal die u wenst te gebruiken.

:p.Klik "Ok" om het venster te sluiten en de instellingen te activeren.
Klik "Annuleren" om alle wijzigingen van de instellingen op de huidige 
pagina te negeren. De knop "Help" toont een helpscherm voor de huidige pagina.

:p.Het instellingenvenster heeft de volgende pagina's&colon.
:ul compact.
:li.:link refid=notification reftype=hd.Meldingen:elink.
:li.:link refid=keepinfo reftype=hd.Bewaar info:elink.
:li.:link refid=misc reftype=hd.Diversen:elink.
:li.:link refid=language reftype=hd.Taal:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*Meldingen

:h3 id=notification res=2210.De Meldingen-pagina
:p.Op deze pagina geeft u aan welke gebeurtenissen &progname. moet melden en hoe dit 
dient te gebeuren.

:dl break=all tsize=5.

:dt.:hp2.Meldt mij wanneer ...:ehp2.
:dd.Hier geeft u aan welke gebeurtenissen gemeld worden. Dit 
gedeelte is verder vrij duidelijk denk ik.

:dt.:hp2.Soort melding:ehp2.

:dd.Hier kunt u aangeven hoe de meldingen dienen te gebeuren.
:ul.
:li."Dialoogvenster met bevestiging" toont de meldingen in een dialoogvenster 
met een "Ok"-knop om te bevestigen.
:li."Tijdsgestuurd dialoogvenster" toont de meldingen in een dialoogvenster dat 
na een aantal seconden automatisch verdwijnt (u kunt het venster ook sluiten
door erop te klikken).
:li."Geluidssignaal" genereert drie bieptonen door de speaker.
:eul.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Info Behouden

:h3 id=keepinfo res=2220.De Info Behouden-pagina
:p.Op deze pagina kiest u of u (een gedeelte van) de tag-informatie wenst te 
behouden in de velden van een nieuw bestand, bij wisselen van bestanden met ALT+'l'
of ALT+'r' en welke informatie u dan wenst te behouden.

:dl break=all tsize=5.

:dt.:hp2.Behoud tag-info bij wisselen van bestanden:ehp2.
:dd.Klik op het aankruisvakje, om de "Info Behouden"-functie te activeren. Wanneer
u dit vakje niet aankruist, zal bij het wisselen van bestanden alleen die informatie
geladen worden die zich in de tag van het betreffende bestand bevindt.

:dt.:hp2.Behoud ...:ehp2.
:dd.Hier kunt u aangeven welke deel van de tag-informatie behouden moet blijven.
Dit is verder vrij duidelijk, denk ik.

:dt.:hp2.Opties:ehp2.
:dd.Een aantal opties voor de "Info Behouden"-functie.
:ul.
:li."Tracknummer verhogen/verlagen" - Wanneer u dit aankruist, wordt het tracknummer
automatisch verhoogt bij wisselen naar het volgende bestand of verlaagd bij 
wisselen naar het vorige bestand.
:li."Info enkel behouden indien niet aanwezig" - Wanneer u dit aankruist, 
wordt de informatie die u heeft aangeduidt om te behouden, alleen behouden als het 
nieuwe bestand deze info nog niet bezit (d.w.z. lege velden, tracknummer 0, genre 
"(none)"). Als het nieuwe bestand deze info bevat, wordt ze niet gewijzigd.
:eul.
:edl.
:p.:hp1.Voorbeeld&colon.:ehp1. U heeft "Titel" en "Artiest" geselecteerd in het 
"Bewaar ..."-gedeelte en "Info enkel behouden indien niet aanwezig" (en uiteraard 
"Behoud tag-info bij wisselen van bestanden" ook) is aangekruist. De Titel van het 
huidige bestand is "I wish you were a beer" en de Artiest is "Cycle Sluts from Hell". 
U typt ALT+'l' (of kiest "Bewaar &amp. volgend" in het "Tag"-menu). Het volgende bestand
heeft reeds een Titel (vb. "Dark Ships") maar geen Artiest. De informatie in de 
velden voor het nieuwe bestand wordt dus&colon. "Dark Ships" als Titel
en "Cycle Sluts from Hell" als Artiest.
:p.Als u in dit voorbeeld "Info enkel behouden indien ..." niet had aangekruist, 
zou de Titel voor het nieuwe bestand "I wish you were a beer" geworden zijn.
:p.Hmm, Ik hoop dat het gemakkelijker te begrijpen valt, dan het was om te programmeren ;-)

:p.:hp1.Opmerking&colon.:ehp1. Wanneer u "Info Behouden" gebruikt en u opent een 
read-only bestand of een bestand dat informatie voor een bepaald veld bevat en 
"Info enkel behouden indien niet aanwezig" is aangekruist, dan gebruikt &progname. 
voortaan de info van dit nieuwe bestand en niet langer de oorspronkelijke informatie.
Hopelijk wordt dit in een toekomstige versie verbeterd.


.*-------------------------------------------------------------------------
.*fold00.*Diversen

:h3 id=misc res=2230.De Diversen-pagina
:p.Op deze pagina kunt u diverse instellingen maken.

:dl break=all tsize=5.

:dt.:hp2.Haal genres uit bestand ...:ehp2.
:dd.Hier vult u de naam in van het (tekst)bestand waaruit &progname. 
de benamingen voor de genres zal halen. Zie :link
refid=genresfile reftype=hd."Het genrebestand":elink. voor meer informatie.

:dt.:hp2.Speler opdrachtregel:ehp2.
:dd.Hier vult u de opdrachtregel in om een MP3-speler te starten, wanneer u 
"Speel bestand" kiest in het :link refid=buttons reftype=hd.menu:elink.
"Extra" van het :link refid=mainwindow reftype=hd.hoofdvenster
:elink.. Typ $f op de plaats waar u in de opdrachtregel de bestandsnaam wil.

:p.:hp1.Opmerking&colon.:ehp1. Om technische redenen dient u een CMD-bestand te gebruiken 
om een speler te starten. Het EXE-bestand rechtstreeks starten zal waarschijnlijk niet lukken. 
De &progname. distributie bevat een aantal 
:link refid=playercmdfiles reftype=hd.commandobestanden voor de populairste MP3-spelers:elink. 
voor OS/2. U dient het bestand dat u wilt gebruiken af te stemmen op uw eigen configuratie 
(dit kan met een willekeurige teksteditor).

:p.:hp1.Voorbeeld&colon.:ehp1. Typ "goPM123 $f" als u PM123 wil gebruiken om uw bestanden
te spelen.

:dt.:hp2.Meer opties:ehp2.
:dd.Hier kunt u verscheidene andere opties instellen&colon.
:ul.

:li."Bestandsnaam is Titel indien geen Titelinfo" - Wanneer u dit vakje aankruist, 
plaatst &progname. de bestandsnaam automatisch in het Titelveld
van het :link refid=taginfo reftype=hd.tag-informatie:elink. gedeelte, enkel  
wanneer het bestand zelf geen Titel heeft.

.*:li."Max. 31 tekens bij automatisch hernoemen" - Wanneer u deze optie kiest, 
.*zal de "Hernoem alle"-functie (zie :link refid=buttons reftype=hd."Knoppen en menubalk:elink.
.*voor meer informatie) geen bestandsnamen van meer dan 31 tekens genereren
.*(inclusief de ".mp3"-extensie). Dit kan nuttig zijn wanneer u MP3-bestanden op 
.*CD-ROM wil plaatsen, aangezien de bestandsnamen dan maximaal 31 tekens kunnen bevatten.

:li."Aangepast bestandsdialoogvenster" - Als u deze optie kiest, gebruikt Minta het 
eigen bestandsdialoogvenster (naar mijn mening een verbetering t.o.v. het standaard
dialoogvenster van OS/2).

:li."Geen melding bij ongeldig bestand" - soms slaagt &progname. er niet in een MP3-bestand 
te decoderen (sommige bestanden hebben :hp1.echt:ehp1. een vreemde "header")
en veronderstelt dan dat het om een ongeldig MP3-bestand gaat (uiteraard gebeurt hetzelfde 
als het :hp1.inderdaad:ehp1. niet om een MP3-bestand gaat!). Wanneer u veel van zulke 
bestanden heeft, kunt u de waarschuwing die &progname. in zulke gevallen toont, uitschakelen.

:li."Read-only&colon. alleen invulvelden read-only" - Als het huidige bestand 
read-only is, zal &progname. normaal alle velden in het :link
refid=taginfo reftype=hd.tag-informatie:elink. gedeelte desactiveren. Aangezien de velden 
in dit geval soms slecht leesbaar zijn, kunt u deze optie gebruiken om &progname. 
de invulvelden alleen read-only te maken, zodat u ze niet kunt wijzigen.

:eul.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*Taal

:h3 id=language res=2240.De Taal-pagina
:p.Op deze pagina kiest u de taal die &progname. gebruikt. Selecteer een
willekeurige taal uit de lijst.

:p.:hp1.Opmerking&colon.:ehp1. Wanneer u een andere taal selecteert, wordt deze 
pas actief na herstarten van het programma.

:p.:hp1.Opmerking&colon.:ehp1. Als u &progname. graag wil vertalen naar een 
andere taal, dan zou ik dat ten zeerste op prijs stellen! Zie :link refid=helpwanted
reftype=hd."Hulp gevraagd!":elink. voor meer info.


.*-------------------------------------------------------------------------
.*fold00.*Het lijst dialoogvenster
:h2 id=listwindow res=2300.Het lijst dialoogvenster
:p.Via dit dialoogvenster kunt u een lijst samenstellen van de geselecteerde bestanden.
De lijst bevat 1 tekstregel per bestand.

:dl break=all tsize=5.

:dt.:hp2.Doelbestand &amp. "Zoeken..."-knop:ehp2.
:dd.Hiermee geeft u de naam op van het bestand waarin de lijst moet opgeslagen 
worden. Met de "Zoeken..."-knop opent u een dialoogvenster, waarmee u het bestand 
eenvoudig kunt aanduiden.

:dt.:hp2.Gewenste informatie:ehp2.
:dd.Hier duidt u aan welke tag-informatie u voor elk bestand in de lijst 
wenst op te nemen. Er moet minstens 1 item geselecteerd worden. De volgorde van 
de velden kunt u voorlopig niet wijzigen (misschien in een volgende versie).

:dt.:hp2.Hoofding toevoegen:ehp2.
:dd.Wanneer u deze optie aankruist, worden de kolommen in de lijst voorzien 
van een informatieve hoofding.

:dt.:hp2.Totale speelduur toevoegen:ehp2.
:dd.Met deze optie wordt de speelduur van alle bestanden in de lijst 
gesommeerd en onderaan toegevoegd.

:dt.:hp2.Automatische kolombreedte:ehp2.
:dd.Wanneer u deze optie aankruist, wordt de breedte van de kolommen in de lijst 
bepaald door de maximale lengte van de informatie. Is dit vakje niet 
aangekruist, dan krijgen de kolommen de maximale breedte van het informatieveld.
:p.:hp1.Opmerking&colon.:ehp1. De breedte van de kolom voor Bestandsnaam &amp. pad 
wordt altijd automatisch bepaald; ik vind het immers geen goed idee 
om deze kolom steeds een breedte van 256 tekens te geven (de maximum lengte van een HPFS-pad). 
Merk ook op dat deze optie de tijd die nodig is om de lijst te genereren ongeveer 
zal verdubbelen, aangezien &progname. voor elk bestand eerst de maximale 
breedte van de informatie dient te bepalen (behalve voor het veld Bestandsnaam / pad, 
waar de maximum lengte bepaald wordt tijdens het toevoegen van bestanden aan de :link refid=filelist
reftype=hd.lijst van geselecteerde bestanden:elink.).

:dt.:hp2.Enkel bestanden met tag:ehp2.
:dd.Met deze optie worden enkel de bestanden met een ID3-tag in de lijst opgenomen,
terwijl bestanden zonder tag overgeslagen worden.

:dt.:hp2.Ok:ehp2.
:dd.Hiermee slaat u de lijst op in het aangeduide doelbestand.

:dt.:hp2.Afbreken:ehp2.
:dd.Hiermee sluit u het venster zonder dat er enige actie genomen wordt.

:dt.:hp2.Help:ehp2.
:dd.Hiermee opent u het helpscherm.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Het Automatisch openen venster
:h2 id=autoopenwindow res=2400.Het Automatisch openen venster
:p.In dit venster geeft u de directory aan, waarin naar MP3-bestanden
gezocht moet worden.

.*-------------------------------------------------------------------------
.*fold00.*Het hernoemen venster
:h2 id=renamewindow res=2500.Het hernoemen venster
:p.Via dit venster kunt u alle bestanden in de lijst hernoemen d.m.v. 
een template of configureerbare tekenreeks.

:dl break=all tsize=5.

:dt.:hp2.Hernoemen template:ehp2.
:dd.Dit veld bevat de template tekenreeks die gebruikt wordt bij het hernoemen. 
U mag hier een willekeurige combinatie van tekst en macro's ingeven. Alle bestanden worden hernoemd 
a.d.v. deze template. Als een bestandsnaam reeds bestaat, krijgt het bestand dezelfde naam, 
maar wordt aan deze naam een uniek nummer toegevoegd.
:p.De volgende macro's zijn beschikbaar en worden vervangen door de 
overeenkomstige waarde&colon.
:ul compact.
:li.$T - Titel
:li.$A - Artiest
:li.$a - Album
:li.$Y - Jaar
:li.$G - Genre
:li.$C - Opmerking
:li.$v - MPEG versienummer
:li.$l - Layer van het bestand
:li.$t - Geschatte speelduur
:li.$m - Modus
:li.$f - Frequentie
:li.$b - Bitrate
:li.$r - Track
:eul.
:p.:hp1.Voorbeeld&colon.:ehp1. Wanneer u in dit veld "($A)-$T" invult en de 
titel van het eerste bestand is "Eat the Rich" by "Mot&oe.rhead", dan 
wordt de nieuwe bestandsnaam: "(Mot&oe.rhead)-Eat the Rich.mp3".

:p.:hp1.Opmerking&colon.:ehp1. Spaties en andere tekens die niet toegelaten zijn in 
HPFS-bestandsnamen ("*", "?", enz.) worden vooraf vervangen door "_".

:dt.:hp2.Beperk lengte van bestandsnamen tot ...:ehp2.
:dd.Deze optie is vooral handig bij het maken van CD's waarbij het bestandssyteem 
bijvoorbeeld geen namen van meer dan 31 tekens toelaat. De gegenereerde namen worden 
automatisch ingekort tot het opgegeven aantal tekens (inclusief de bestandsextentie!).

:dt.:hp2.Vervang ~spaties door onderlijning:ehp2.
:dd.Indien u bestandsnamen zonder spaties wenst, kiest u deze optie om alle 
spaties automatisch te vervangen door '_'.

:dt.:hp2.Hernoem:ehp2.
:dd.Dit bezorgt u rijkdom, roem en de eeuwige jeugd.
Wel neen, natuurlijk niet (anders zou &progname. natuurlijk niet gratis zijn ;-). Hiermee 
start u het hernoemen van de bestanden.

:dt.:hp2.Afbreken:ehp2.
:dd.Hiermee sluit u het venster zonder dat er enige actie genomen wordt.

:dt.:hp2.Help:ehp2.
:dd.Met deze knop laat u een koor van "Help! Help!" schreeuwen door elk  
beschikbaar audiosysteem galmen. Of toch zoiets ...

:edl.
:p.:hp1.Opmerking&colon.:ehp1. Deze functie faalt (d.w.z. toont een foutboodschap)
wanneer de bestandsnaam langer wordt dan het door het bestandsysteem toegelaten maximum 
(vb. op een FAT-drive waar bestandsnamen maximaal 8 tekens lang kunnen zijn).

.*-------------------------------------------------------------------------
.*fold00.*Argumenten voor de commandoregel
:h1 id=cmdlineargs res=3000.Argumenten voor de commandoregel
:p.Het eerste argument voor de commandoregel dat &progname. herkent is
een  bestands- of directorynaam. Dit laat u toe een bestand te openen
vanop de  commandoregel of in een directory bestanden te zoeken, alsook
MP3-bestanden  met &progname. te associeren in de WPS.

:p.:hp1.Voorbeeld&colon.:ehp1. Als u "minta c&colon.\mp3s" typt aan de
opdrachtaanwijzing, zal &progname. in de directory "c&colon.\mp3s"
MP3-bestanden zoeken (alleen indien dit  een directory is uiteraard ;-)
en daarna het hoofdvenster openen, waarbij de gevonden  bestanden al
aan de :link refid=filelist reftype=hd.lijst van geselecteerde
bestanden:elink. zijn toegevoegd.

:p.Een tweede argument voor de commandoregel is "-f"&colon. Blijkbaar
heeft WarpAMP problemen om de tag-informatie af te beelden wanneer de
tag-velden opgevuld worden met een nul, maar werkt het wel wanneer
spaties gebruikt worden. Als u dit argument opgeeft, zal &progname. ook
spaties ipv nullen gebruiken.

.*-------------------------------------------------------------------------
.*fold00.*Tips + trucs
:h1 id=tipstricks res=4000.Tips &amp. trucs
:p.In dit gedeelte vindt u een aantal tips &amp. trucs die u tijd kunnen besparen of het  
gebruik van &progname. wat eenvoudiger maken.

:dl break=all tsize=5.

:dt.:hp2.Tags voor een volledig album - Met "Bewaar alle":ehp2.
:dd.De functie "Bewaar alle" biedt een eenvoudige manier om een volledig album 
van tags te voorzien, zonder steeds weer dezelfde informatie in te moeten typen&colon.
:ol compact.
:li.Open alle MP3-bestanden van het album in de :link
refid=filelist reftype=hd.lijst van geselecteerde bestanden:elink.. Als u de
bestanden samen in een directory plaatst, kunt u hiervoor de :link refid=buttons 
reftype=hd.functie Automatisch openen:elink. gebruiken. (Zorg ervoor dat dit de 
enige bestanden zijn in de lijst, door eventueel vooraf "Sluit alle" te gebruiken!)
:li.Vul Artiest, Album, Jaar (en eventueel Genre) informatie in de overeenkomstige
velden van het :link refid=taginfo reftype=hd.Tag-informatie gedeelte:elink..
Zorg dat de andere velden leeg blijven (of 0, of "(geen)").
:li.Wenst u informatie zoals speelduur, enz. als opmerking bij elke song, gebruik 
dan de overeenkomstige :link refid=taginfo reftype=hd.macros in het veld Opmerking:elink..
:li.Klik de "Bewaar alle" knop of kies "Bewaar alle" in het menu "Tag". Kies dan 
"OK" in het meldingsvenster dat verschijnt. De ingevoerde informatie wordt nu voor 
alle bestanden bewaard.
:li.Selecteer het eerste bestand in de :link refid=filelist reftype=hd.lijst van 
geselecteerde bestanden:elink. en vul de ontbrekende informatie in (Titel, Track #, enz.).
:li.Gebruik daarna ALT+'g' om de bestanden een voor een te doorlopen en de ontbrekende 
informatie voor elk bestand in te vullen.
:eol.

:dt.:hp2.Tags voor een volledig album - Met "Info Behouden":ehp2.
:dd.De functie "Info Behouden" biedt nog een tweede manier om op eenvoudige wijze een 
volledig album van tags te voorzien&colon.
:ol compact.
:li.Open het :link refid=settingswindow reftype=hd.instellingenvenster:elink. (door 
"Instellingen..." te kiezen in het menu "Bestand") en selecteer de pagina "Info Behouden".
:li.Kruis (als dit nog niet het geval is) "Behoud tag-info bij wisselen van bestanden"
aan. In het gedeelte "Behoud ..." kruist u "Artiest", "Album", "Jaar" en indien van toepassing 
ook "Genre" and "Opmerking" aan. Als u ook het Tracknummer voor elk bestand wenst te behouden,
kruist u ook "Tracknummer verhogen/verlagen" aan.
Maak alle andere vakjes op deze pagina leeg (indien er aangekruist zouden zijn).
:li.Sluit het instellingenvenster door "OK" te klikken.
:li.Open alle MP3-bestanden van het album in de :link
refid=filelist reftype=hd.lijst van geselecteerde bestanden:elink.. Als u de
bestanden samen in een directory plaatst, kunt u hiervoor de :link refid=buttons 
reftype=hd.functie Automatisch openen:elink. gebruiken. (Zorg ervoor dat dit de 
enige bestanden zijn in de lijst, door eventueel vooraf "Sluit alle" te gebruiken!)
:li.Vul in de overeenkomstige velden van het :link refid=taginfo reftype=hd.taginformatie 
gedeelte:elink. Titel, Artiest, Album, Jaar (en eventueel Genre) in voor het eerste bestand.
:li.Wenst u informatie zoals speelduur, enz. als opmerking bij elke song, gebruik 
dan de overeenkomstige :link refid=taginfo reftype=hd.macros in het veld Opmerking:elink..
:li.Als u het tracknummer voor elk bestand wenst te behouden, zet Track # dan op 1.
:li.Met ALT+'g' (of "Bewaar &amp. volgende" in het menu "Tag") gaat u naar het volgende 
bestand in de lijst. Vul hier de ontbrekende informatie in.
Met ALT+'g' doorloopt u de lijst om telkens de ontbrekende informatie voor elk
bestand in te vullen.
:eol.
:edl.
:p.Een handige mogelijkheid, die u in het bovenstaande kunt gebruiken, is de optie 
"Bestandsnaam is Titel indien geen Titelinfo" op de :link refid=misc
reftype=hd.pagina "Diversen":elink. in het :link refid=settingswindow
reftype=hd.instellingenvenster:elink.. Indien uw bestanden reeds een naam hebben, 
die lijkt op de titel van de song (vb. "I_WISH_YOU_WERE_A_BEER.MP3"),
dan hoeft u dit voor elk bestand nog slechts een weinig aan te passen.


.*-------------------------------------------------------------------------
.*fold00.*Verleden, heden + toekomst
:h1 id=pastpresentfuture res=5000.Verleden, heden &amp. toekomst
:p.Dit deel bevat informatie omtrent de historiek van &progname., informatie 
over (bugs in) de huidige versie en zaken die in de toekomst mogelijk gewijzigd of 
toegevoegd zullen worden.


.*-------------------------------------------------------------------------
.*fold00.*Versiehistoriek
:h2 id=history.Versiehistoriek :p.Hieronder vindt u de zaken die toegevoegd
of gewijzigd werden in de opeenvolgende versies van het programma.

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

:dt.:hp2.Versie 2.27:ehp2.
:dd.Twee bugs gecorrigeerd - eentje in &progname. en een andere ... ;-)
:ul compact.
:li.Technische MP3-informatie wordt weer correct afgebeeld.
:li.&progname. gebruikt nu ook spaties ipv nullen om de
tag-informatievelden  op te vullen, waardoor een probleem met WarpAMP
wordt opgelost. (zie :link refid=cmdlineargs reftype=hd.Argumenten voor
de commandoregel:elink.)
:eul.

:dt.:hp2.Versie 2.25:ehp2.
:dd."It's about time they played something cool!" - Inderdaad, en daarom is er nu v2.25!
:ul compact.
:li.Ondersteuning van het Nederlands.
:li.Een geavanceerde functie om automatisch te hernoemen (hernoemt bestanden d.m.v. een template, 
macro's, beperkt de lengte van de gegenereerde bestandsnamen, vervangt spaties door onderlijning).
:li.ID3v2.x tags worden momenteel korrekt herkend en genegeerd (sorry, om dit type tags 
te kunnen bekijken of wijzigen moet u nog even wachten ...)
:li.Aangepast bestandsdialoogvenster met ondersteuning voor verschillende bestandstypes.
:li.Een aantal interne wijzigingen aan code.
:li.Korrektie van enkele kleine fouten (deze waren zo klein dat niemand ze heeft opgemerkt of 
ze waren enkel esthetische van aard ;-)
:eul.

:dt.:hp2.Versie 2.00:ehp2.
:dd.Dankzij de eindeloze creativiteit van de bätatesters, suggesties van 
eindgebruikers en mijn eigen ideeân, bevat &progname. nu volgende mogelijkheden&colon.
:ul compact.
:li.Zoals ik reeds had beloofd voor de vorige versie, leest &progname. de genres nu 
uit een door de gebruiker te selecteren en te bewerken bestand. &progname. herkent het 
eigen formaat voor dit bestand of ook WarpAMP's "genres.txt". Zie :link
refid=genresfile reftype=hd."Het genresbestand":elink. voor meer informatie.
:li.Voor bestanden met een leeg "Titel"-veld kan u &progname. nu ook automatisch de 
naam van het bestand als Titel laten invullen.
:li.&progname. aanvaardt nu ook bestandsnamen (of directory) als :link
refid=cmdlineargs reftype=hd.argument voor de commandoregel:elink., zodat het voortaan  
mogelijk is om via de commandoregel een welbepaald bestand te laden, of bestanden te zoeken  
in een directory, of MP3-bestanden met &progname. te associeren in de WPS.
:li.&progname. ondersteunt nu verschillende talen (momenteel enkel Engels, Duits en Nederlands).
:li.Het is nu mogelijk bestanden of directories naar het hoofdvenster te slepen
zodat &progname. deze bestanden toevoegt aan de :link refid=filelist reftype=hd.lijst van 
geselecteerde bestanden:elink./ deze directories doorzoekt op MP3-bestanden en deze aan de 
lijst toevoegt.
:li.Het is nu mogelijk het huidige bestand vanuit &progname. te openen in een MP3-speler naar keuze.
:li.Bij wisselen van bestanden, kunt u nu opgeven om bepaalde tag-informatie van het ene 
bestand te behouden in het andere bestand (handig om vb. een compleet album te bewerken).
:li.Voor read-only bestanden, kan &progname. de :link refid=taginfo
reftype=hd.tag-informatievelden:elink. nu enkel read-only maken in plaats van 
volledig te desactiveren ("grijze" tekst), zodat de velden iets makkelijker leesbaar blijven.
:li.U kunt nu kiezen tussen drie verschillende "types" programmameldingen.
:li.U kunt de waarschuwing "Ongeldig MP3-bestand" nu ook uitschakelen.
:li.Automatisch Hernoemen kan de bestandsnamen nu beperken tot maximaal 31 karakters 
(handig bij aanmaak van CDROMs die slechts bestandsnamen tot 31 karakters ondersteunen).
:li.Verbeterde en uitgebreide helptekst en documentatie.
:li.Enkele bugs verwijderd (huidig bestand wordt niet gesloten bij "Verwijder alle",
kleine bug in het "Selecteer directory ..." venster, &progname. loopt vast op bestanden
met een ongeldig genre, ...)
:eul.

:dt.:hp2.Versie 1.67:ehp2.
:dd.Volgende zaken werden gewijzigd /toegevoegd&colon.
:ul compact.
:li.&progname. ondersteunt nu ook ID3 v1.1 tags.
:li.Versie, Layer, Frequentie, Bitrate en Modus kunnen nu ook opgenomen worden in de lijst 
van bestanden.
:li.De functie "Automatisch hernoemen" werd toegevoegd (laat toe om bestanden automatisch de 
naam van de Titel te geven).
:li.U kunt nu macro's gebruiken in het veld Opmerkingen om automatisch de speelduur, 
enz. te laten invullen.
:li.De knoppen en het gedeelte bestandsinformatie kunnen nu naar keuze afgebeeld of verborgen 
worden.
:li.Instellingenvenster, waarmee de verschillende programmameldingen in/uitgeschakeld 
kunnen worden.
:li.De kleur en het lettertype van het hoofdvenster kunnen nu makkelijk gewijzigd 
worden via drag 'n drop uit de respectievelijke paletten. Deze instellingen worden 
eveneens bewaard in &inifile..
:li.Het icoon van &progname. werd veranderd overeenkomstig het standaard icoon voor MP3-bestanden.
:li.Een aantal kleinere bugs verholpen.
:eul.

:dt.:hp2.Versie 1.45:ehp2.
:dd.Ik kan het moeilijk geloven! Uiteindelijk resultaat! Eindelijk is het afgewerkt ...
Eerste publieke uitgave.

:dt.:hp2.Versie 1.44:ehp2.
:dd.Zeg maar "v2.0" ...
:ul compact.
:li.Bij globale bewerkingen toont de venstertitel nu het bestand of de directory die momenteel
in bewerking is (Bewaar alle, enz.).
:li.Optie toegevoegd om alleen bestanden met tags in de lijst op te nemen.
:li.Mijn eigen (rare, onvolledige, mogelijk foutieve) MP3-header decoderingsroutine 
vevangen door die uit de
:link refid=credits reftype=hd.mpg123/2:elink. broncode (een weinig aangepast).
:li.Interne herwerking van enkele delen in de programmacode.
:li.Een aantal bugs verholpen, een paar nieuwe toegevoegd, en ook deze weer verholpen ...
:eul.

:dt.:hp2.Versie 1.41:ehp2.
:dd.Geen commentaar. Hier zal men voor moeten betalen ... (Oh nee! Dit is freeware! ;-)
:ul compact.
:li.Mogelijkheid tot automatische bestandsselectie in (sub)directories toegevoegd.
:li.Detectie en verwerking van read only-bestanden toegevoegd.
:li.Automatische breedte voor kolommen in de MP3-bestandenlijst toegevoegd.
:eul.

:dt.:hp2.Versie 1.34:ehp2.
:dd.Ik denk dat ik bätatesters moet vinden die iets sneller tevreden zijn ...
:ul compact.
:li.Selectiemogelijkheid voor bestanden uit verschillende directories toegevoegd.
:li.Mogelijkheid om bestandsnamen toe te voegen in de lijst.
:li.Menubalk toegevoegd (er zijn ondertussen voldoende functies bijgekomen ...)
:li.Een aantal kleinere bugs verholpen.
:li.Intern versienummer toegevoegd aan &inifile. om eventuele fouten te vermijden 
wanneer een oud bestand gebruikt wordt met nieuwere versies van &progname..
:eul.

:dt.:hp2.Versie 1.29:ehp2.
:dd.Op vraag van de testers werd alweer een functie toegevoegd.
Als dit zo blijft doorgaan, wordt &progname. misschien het allereerste programma met 
versie 2.0 als eerste release ;-)
:ul compact.
:li.Functie toegevoegd om een lijst te genereren van de geselecteerde bestanden.
:li.De instellingen voor deze lijst worden eveneens bewaard in &inifile..
:li.Kleine bug ivm de knoppen in het hoofdvenster verholpen.
:eul.

:dt.:hp2.Versie 1.16:ehp2.
:dd.Op vraag van de testers naar bijkomende mogelijkheden en een aantal eigen ideeân,
werden de volgende zaken toegevoegd&colon.
:ul compact.
:li.Selecteren van meerdere bestanden
:li.Tags verwijderen van meerdere bestanden tegelijkertijd
:li.Tags toevoegen aan meerdere bestanden tegelijkertijd
:li.Eenvoudig wijzigen van meerdere bestanden na elkaar
:li.De laatste werkdirectory (waarin bestanden geselecteerd werden) en de positie van het 
hoofdvenster worden bewaard in &inifile. en onthouden wanneer het programma opnieuw 
gestart wordt.
:li.Een installatiescript om een &progname. WPS-object aan te maken.
:eul.

:dt.:hp2.Versie 1.00:ehp2.
:dd.Deze versie was slechts bedoeld voor de bätatesters en werd nooit officieel uitgebracht.

.*Iets ... toegevoegd (ja, dit is een geheim)
.*:li.Bij langdurige taken (Bewaar alle, Hernoem alle, enz.) toont &progname. nu een 
.*statusvenster en deze taken worden afgehandeld in een aparte thread.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Bugs

:h2 id=bugs.Gekende bugs
:p.Momenteel zijn er mij geen "echte" bugs bekend. Hieronder een opsomming 
van enkele ongemakken&colon.

:ul compact.
:li.Wanneer de lijst van geselecteerde bestanden leeg gemaakt wordt, blijft 
de naam van het laatst geselecteerde bestand zichtbaar. Om een obscure reden slaag 
ik er niet in dit veld volledig leeg te maken (hoewel dit op een andere 
plaats wel lukt! Zeer vreemd).
:li.Ik moet toegeven dat net zoals de meeste van mijn programma's, ook &progname. 
niet correct omspringt met zeer lange bestandsnamen (> 255 karakters) (vb. bij
Automatisch hernoemen). Zo'n "monster" ben ik echter nog niet tegengekomen ...
:li.Wanneer u de Titel van een bestand wijzigt, zal "Automatisch hernoemen" van dit 
bestand niet werken, zolang de tag voordien niet werd bewaard. Ik weet niet of we 
dit een bug moeten noemen.
:li.Wanneer u met "Info Behouden" een read-only bestand bereikt of een bestand met 
informatie voor een bepaald veld, terwijl "Info enkel behouden indien niet aanwezig"
geactiveerd is, zal &progname. vanaf dan de informatie van dit bestand behouden en 
niet langer de informatie van het "originele" bestand.
:li.Soms blijken meldingenvensters de kleur en het lettertype van het hoofdvenster 
niet over te nemen.
:li.Drag 'n drop werkt alleen als u de objecten naar een leeg gedeelte in het 
hoofdvenster sleept, welk niet gebruikt wordt door een subvenster (knop, invulveld,
enz.).
:li."Speel bestand" gebruikt een CMD-bestand om de MP3-speler te starten.
:li.Ik heb vernomen dat het volgende in WarpAMP werd gecorrigeerd (dit was te wijten  
aan twee weinig van elkaar verschillende ID3v1.1 specificaties)&colon.
In de playlist van WarpAMP ontbreken soms verschillende informatievelden.
Aangezien andere programma's (PM123 om er eentje te noemen) alles wel correct afbeelden 
en ik echt geen idee heb wat er mis kan zijn met de tags, leg ik de schuld maar bij WarpAMP ;-)
:eul.

.*-------------------------------------------------------------------------
.*fold00.*Toekomstige verbeteringen
:h2 id=future.Toekomstige verbeteringen
:p.Volgende zaken zullen (hopelijk) ooit in &progname.&colon. terecht komen

:p.:hp2."Kleinigheden":ehp2.
:ul compact.
:li.Knoppen om het volgende/vorige bestand in de lijst te selecteren.
:li.Knippen, kopieren en plakken van tags van en naar het klembord.
:eul.
:p.:hp2."Respectabel":ehp2.
:ul compact.
:li.De mogelijkheid om de lijst van geselecteerde bestanden op verschillende manieren te sorteren.
:li.De mogelijkheid om informatievelden bij het aanmaken van een lijst willekeurig te ordenen.
:li."Historiek"-functie voor de invulvelden (dwz elk veld heeft een keuzelijst waaruit u de laatste 
n ingevoerde waarden kunt kiezen).
:li.Een (ooit aanpasbare) knoppenbalk in het hoofdvenster.
:li.Een statusbalk in het hoofdvenster (ter vervanging van de meldingsvensters?)
:li.Lyrics3/Lyrics3 v2.00 ondersteuning.
:li.De mogelijkheid om de tag van een bestand in te lezen en deze daarna automatisch te 
laten toevoegen aan alle bestanden in de lijst.
:li.Auto-tagging functie die zoveel mogelijk informatie uit de bestandsnaam, e.d. haalt
en op basis daarvan een tag genereert voor het betreffende bestand .
:eul.
:p.:hp2."Indrukwekkend":ehp2.
:ul compact.
:li.Een MP3-database in &progname., die u toelaat MP3-bestanden te 
beheren, hun inhoud en informatie te raadplegen, bestanden te zoeken,
lijsten uit te drukken, bestanden te exporteren naar andere formaten, en veel meer.
:li.Raadplegen van ID3 v2.x tags.
:li.Bewerken van ID3 v2.x tags.
:li.Via &progname. toegang verlenen tot een (of meerdere) Internet CD database(s).
:eul.
:p.Laat me weten welke functies je heel erg belangrijk vindt en welke 
functies voor jou eerder overbodig zijn ...

.*-------------------------------------------------------------------------
.*fold00.*Bestanden

:h1 id=files.Bestanden
:p.Dit gedeelte bevat informatie over een aantal van de bestanden die gebruikt 
worden door &progname..

.*-------------------------------------------------------------------------
.*fold00.*Het genrebestand

:h2 id=genresfile.Het genrebestand
:p.Dit bestand bevat benamingen voor verschillende muziekgenres.
:p.Normaal is dit het bestand "genres.txt", maar u kunt ook een ander 
bestand opgeven op de :link refid=misc reftype=hd.Diversen pagina:elink.
van het :link refid=settingswindow reftype=hd.instellingenvenster:elink..
:p.U kunt dit bestand bewerken met elke gewone teksteditor, maar voor u hieraan begint, 
dient u een aantal zaken in overweging te nemen&colon.
:ul.
:li.Als u de naam van een bestaand genre wijzigt, zullen alle bestanden met dit 
genre eveneens deze nieuwe benaming gebruiken.
:li.Nog een ander nadeel is dat u wellicht de enige zult zijn die deze 
nieuwe benaming gebruikt. Anderen zullen voor een MP3-bestand van dit genre
nog steeds de "oude" naam zien, wat waarschijnlijk niet uw bedoeling is.
:li.Wanneer u nieuwe genres aanmaakt (d.w.z. toevoegen aan de lijst) gebeurt dit zonder 
medeweten van anderen. Als iemand anders een MP3-bestand met dergelijk genre wil gaan 
gebruiken, zal dit alleszins tot verwarring leiden en eventueel fouten veroorzaken.
:eul.
:p.Het genrebestand is opgebouwd volgens &progname.'s eigen formaat&colon.
:xmp.
# Minta genrebestand
# Deze lijn en de lijn hierboven zijn commentaar

Blues
Classic Rock
Country
Dance
 ...
:exmp.
:p.Het bestand wordt lijn per lijn gelezen. Commentaar (lijnen die beginnen met '#')
en blanco lijnen worden genegeerd. De overige lijnen bevatten telkens een genrenaam.
De genres worden genummerd volgens hun volgorde in het bestand (d.w.z. in het voorbeeld  
krijgt Blues het nummer 1, Classic Rock 2 enz.). Lijnen (en genrenamen) kunnen tot 
255 tekens bevatten.

:p.&progname. herkent eveneens het "genres.txt" formaat van WarpAMP
(elke lijn is opgebouwd als "nn naam", waarbij "nn" het nummer is en "naam"
de benaming voor dat genre). U kunt de twee formaten zelfs door elkaar gebruiken 
en &progname. zal dit nog steeds correct trachten te interpreteren. Dit is echter 
:hp1.niet aanbevolen:ehp1. !


.*-------------------------------------------------------------------------
.*fold00.*De speler CMD-bestanden

:h2 id=playercmdfiles.De speler CMD-bestanden
:p.Deze bestanden worden gebruikt om het huidige MP3-bestand vanuit &progname. 
te openen in een MP3-speler naar keuze.
:p.Om een aantal technische redenen dient &progname. de speler via een CMD-bestand te 
starten. Het EXE-bestand rechtstreeks starten kan mislukken. Ik hoop dit te kunnen
oplossen in een volgende versie. U kunt de naam van het gewenste CMD-bestand opgeven 
op de :link refid=misc reftype=hd.Diversen pagina :elink. van het :link refid=settingswindow
reftype=hd.instellingenvenster:elink..
:p.Overeenkomstig de gekozen MP3-speler, dient u het bestand aan te passen
(gewoonlijk hoeft u slechts de juiste drive en directory-informatie op te geven).
:p.Volgende bestanden zitten bijgevoegd&colon.
:ul.
:li.gowamp.cmd - voor WarpAMP
:li.gopm123.cmd - voor PM123
:li.gompg123.cmd - voor mpg123
:eul.
:p.Wanneer u nog een andere speler wenst te gebruiken, kunt u deze bestanden 
eenvoudig aanpassen (eigenlijk zijn ze allemaal vrij gelijkaardig ;-) zodat ze 
de door u gekozen speler starten.


.*-------------------------------------------------------------------------
.*fold00.*Afwijzing & wettelijke overwegingen

:h1 id=disclaimer.Afwijzing &amp. wettelijke overwegingen
:p.Hieronder volgen de gebruikelijke afwijzingen. Voor diegenen die dit al
te vaak gelezen hebben, is hier de verkorte versie&colon.

:p."I didn't do it! I didn't do it! Butthead did it!" ;-)

:p.Alle anderen, gelieve het onderstaande te lezen en er rekening mee te houden&colon.

:p.Hoewel dit programma vrij uitvoerig getest werd, kunnen er nog steeds heel 
wat bugs inzitten (zelfs ernstige - hoewel ik dit betwijfel). Geef mij niet de 
schuld wanneer dit programma uw bestanden beschadigt of iets dergelijks.

:p.:hp2.U GEBRUIKT DIT PROGRAMMA OP EIGEN RISICO!:ehp2. Ik ben niet verantwoordelijk
voor beschadigingen, problemen, gevangenschap, echtelijke twisten, enz. die 
rechtstreeks of onrechtstreeks voortvloeien uit het gebruik, het niet gebruiken, 
verkeerd gebruik, het bezitten of niet bezitten van dit programma.
Bovendien geef ik geen garanties voor een foutloze werking, geschiktheid voor 
een welbepaald doel of een aangepaste werking van dit programma wat betreft
dieren, programmeurs of kinderen.

:p.DEZE SOFTWARE WORDT TER BESCHIKKING GESTELD "IN DE STAAT WAARIN HIJ ZICH BEVINDT" 
EN DIT ZONDER UITDRUKKELIJKE OF GEIMPLICEERDE GARANTIES, INBEGREPEN, EN ZONDER VOORBEHOUD, 
DE GEIMPLICEERDE GARANTIES VAN VERKOOPBAARHEID EN GESCHIKTHEID VOOR EEN WELBEPAALD DOEL.
U DRAAGT HET VOLLEDIGE RISICO WAT BETREFT DE KWALITEIT EN PRESTATIES VAN HET PROGRAMMA.
BIJ NIET FUNCTIONEREN VAN HET PROGRAMMA, NEEMT U DE VOLLEDIGE KOSTEN VOOR ALLE VEREISTE 
DIENSTEN, HERSTELLINGEN OF CORRECTIES OP ZICH.

:p.Of, kort&colon.
Als alles goed is, komt het door mij.
Als er iets slecht is, is het uw fout. ;-)

:p.Het is toegelaten dit programma gratis te verdelen, op voorwaarde 
dat dit met het volledige pakket met ongewijzigde inhoud gebeurt en 
zonder winst te maken, buiten de waarde van de media waarop men het 
programma verdeelt. Uitzondering op deze laatste regel&colon. het 
programma mag deel uitmaken van freeware/shareware collecties op CD-ROM, 
evenals van CD-ROMs bijgevoegd bij magazines.

:p.Alle handelsmerken hier vernoemd zijn eigendom van de respectievelijke eigenaars ...

:p.(Vreemd, dit gedeelte wordt steeds langer bij elke nieuw programma ... &colon.-)


.*-------------------------------------------------------------------------
.*fold00.*Auteur & Minta homepage

:h1 id=author.Auteur &amp. &progname. homepage
:p.:hp7.Auteur:ehp7.

:dl break=all tsize=5 compact.

:dt.:hp2.Snail mail:ehp2.
:dd.Thorsten Thielen c/o Sascha Weber, Postfach 3928, 54229 Trier, Germany

:dt.:hp2.E-mail:ehp2.
:dd.&email1.
.*(dit adres heeft de voorkeur, hoewel &email2. nog steeds geldig is)

:dt.:hp2.WWW:ehp2.
:dd.&www.

:edl.

:artwork name='src/data/teamlogo.bmp' align=center.
:p.Trots lid van Team OS/2 Regio Trier (:hp1.www.teamos2.ipcon.de:ehp1.), 
makers van de "Team Trier Collection"-CDROM.

:lm margin=1.
:p.
Suggesties en bugrapporten zijn altijd welkom. Hoewel ... bugrapporten
zijn misschien niet :hp1.zo:ehp1. welkom ... ;-)
:p.
.br
:hp7.&progname. homepage:ehp7.
:p.Bezoek de homepage van &progname. voor meer informatie en nieuwe versies&colon.
&www./minta



.*-------------------------------------------------------------------------
.*fold00.*Hulp gevraagd!
:h1 id=helpwanted.Hulp gevraagd!
:p.Nu &progname. verschillende talen ondersteunt, wil ik er uiteraard zoveel 
mogelijk beschikbaar maken. Het probleem is dat ik zelf alleen het Engels en het Duits
goed genoeg ken om de vertalingen te doen &colon.-) Als iemand anders &progname. 
dus wil vertalen naar een andere taal, zou ik dat ten zeerste op prijs stellen!

:p.De bronbestanden voor de programmahelp en resources zitten bijgevoegd in een 
afzonderlijk ZIP-bestand ('language.zip'). Neem gewoon de *.rc en *.ipf bestanden 
van uw keuze en begin maar te vertalen! &colon.-) Indien u hierover nog vragen heeft, 
kunt u mij zonder probleem :link refid=author reftype=hd.kontakteren:elink.!

:p.Als u geen tijd heeft (of geen zin ;-) om een "volledige" vertaling te doen 
(d.w.z. het programma en alle helpbestanden), dan kunt u natuurlijk ook alleen 
de bronbestanden (dialoogvensters, menu's, enkele berichten) vertalen!
Dat zou reeds een grote hulp betekenen ...

.*-------------------------------------------------------------------------
.*fold00.*Dankwoord

:h1 id=credits.Dankwoord
:p.De volgende personen wens ik te bedanken voor hun hulp en medewerking aan
&progname.&colon.

:ul.
:li.Dank aan :hp1.Sascha Weber:ehp1. en :hp1.Dirk Riemekasten:ehp1. voor 
hun uitstekende bätatests van &progname.
(En een schop onder hun k*nt om me voortdurend te dwingen nieuwe functies toe te voegen ;-)
:li.Veel dank aan het :hp1.mpg123 team:ehp1. voor het ontwikkelen van hun
MP3-speler en het beschikbaar stellen van de broncode, zodat ik hun decoderingsroutine 
voor MP3-headers heb kunnen lenen! Deze is veel beter dan hetgeen ik geschreven had ... 
(Meer informatie over mpg123 vindt u op 
http&colon.//www.sfs.nphil.uni-tuebingen.de/~hipp/mpg123.html).
:li.Dit programma gebruikt enkele kleine stukken code uit :hp1.Richard Papo's:ehp1.
uitstekende systeembronnen monitor "MemSize" (Meer informatie over MemSize vindt u op
http&colon.//www.msen.com/~rpapo).

:li.Veel dank ook aan :hp1.Luc Van Bogaert:ehp1. voor de Nederlandse vertaling.
:li.Veel dank ook aan :hp1.Guillaume Gay:ehp1. voor de (French) vertaling.
:li.Veel dank ook aan :hp1.Jostein Ullestad:ehp1. en :hp1.HÜvard Mork:ehp1. voor de (Norwegian) vertaling.
:li.Veel dank ook aan :hp1.Cyrill Vakhneyev:ehp1. voor de (Russian) vertaling.

.* FIXME
:li.Many thanks to :hp1.Michael Baryshnikov:ehp1. for finding lots of bugs!
:li.Special thanks to :hp1.Alberto Gabrielli:ehp1., not only for the
Italian translation of the program and the online help but also for finding
and notifying me of many, many bugs and inconsistencies!

:li.Tenslotte wil ik alle gebruikers bedanken die me op de hoogte hebben gebracht van bugs,
of die me suggesties of een berichtje hebben toegestuurd over &progname.!
:eul.

.*-------------------------------------------------------------------------
.*fold00.*Registratie
:h1 id=register."Registratie"
.*:p. Indien u tevreden bent met wat &progname. 1.67 biedt, kunt u deze versie vrij 
.*blijven gebruiken ... maar denk eraan dat er veel nuttige functies in ontbreken die 
.*wel in meer recente versies zitten en dat ik er geen ondersteuning meer voor kan 
.*bieden!
:p.U kunt een geregistreerd gebruiker van &progname. (&version.) worden door mij
:link refid=author reftype=hd.een e-mail bericht (of een aanzichtkaart of iets dergelijks) 
toe te sturen:elink.. Indien u &progname. gebruikt (vaker dan eens per jaar of zo ;-).
is dit eigenlijk verplicht. Schrijft u me gewoon iets in de zin van "Hallo, ik gebruik uw 
programma &progname.!" en daarmee ben ik best tevreden. Als u :hp1.niet:ehp1. wenst opgenomen 
te worden in de mailing lijst voor nieuws en info over &progname., vergeet dit dan niet te 
vermelden!

:p.Ik denk echter dat er veel mensen zijn die &progname. al eens bekeken hebben,
het zelf een tijdje gebruikt hebben, maar die zich toch niet willen registreren 
door mij een berichtje te sturen. Voor deze mensen heb ik een lijst gemaakt van ...
:p.:hp2.De 10 voornaamste redenen om &progname. niet te registreren:ehp2.

:ul compact.

:li.Ik vindt &progname. een zeer slecht programma. Ik hou niet van de kleur en het 
lettertype in de vensters (en ik hou nog minder van het feit dat ik dit zelf kan 
veranderen!), ik spreek geen enkele van de ondersteunde talen en ik heb gehoord dat er
zelfs ooit eens een bug in gevonden werd. Om van de gebrekkige ondersteuning nog maar te 
zwijgen; een e-mail bericht sturen om hulp te krijgen is veel te ingewikkeld.

:li.Ik ben perfect tevreden met alles dat &progname. 1.67 te bieden heeft. Ik zoek 
zelf wel een weg rond de bugs die mogelijk opduiken! Ik zal toch nooit gebruik maken 
van drag'n'drop, de auto-tagging mogelijkheden of dat database gedoe!
En ID3 v2.x heb ik momenteel toch nog niet nodig. Bespaar me dus uw updates ...

:li.Wie geeft er om informatie over nieuwe versies? Waarom zou ik me nog maar eens op 
een mailing-lijst abonneren? M'n postvakje stroomt nu al regelmatig over en ik kontroleer 
de "incoming" directory van Hobbes toch reeds elke dag!

:li.Ik vind gewoon de tijd niet om je een berichtje te sturen! Kijk, Ik heb een job,
een vrouw, een 10-tal kinderen, een vriendin, een auto, een huis, een zwembad en 
duizenden MP3-bestanden die ik nog van tags moet voorzien, dus ik heb het dag en nacht 
razend druk! Ik mad er niet aan denken wat ik in die vijf verloren minuten zou missen ...

.*:li.$10 is veel te veel geld voor dit programma! Voor dit bedrag zou ik me wel 
.*een halve CD kunnen aanschaffen! Ik zou mijn vriendin mee uit eten kunnen nemen  
.*(als we tenminste daarvoor als iets gegeten zouden hebben). Ik kan aan duizenden 
.*dingen denken ...

:li.Waarom zou ik u moeten stimuleren om OS/2-software te schrijven?
Er zijn momenteel al genoeg OS/2-programma's beschikbaar, en we willen 
de markt niet verzadigen, wel?

:li.Er zijn een hele boel programma's beschikbaar die net hetzelfde doen! Ok,
misschien hebben ze niet zo'n knappe PM interface, en misschien bieden ze niet 
helemaal dezelfde functionaliteit als &progname. en misschien zijn er toch slechts 
een 2-tal beschikbaar, maar ik hoef me tenminste geen uren bezig te houden met 
ellenlange berichten te schrijven naar de auteurs!

:li.Het mailware concept steunen vind ik nutteloos. Ontwikkelaars die volledig 
werkende programma's weggeven en hopen dat iemand hen zonder verplichting een 
berichtje stuurt wanneer men het programma gebruikt, vind ik een bende goedgelovige 
idioten!

:li.Waarom zou ik moeite doen om OS/2 software te steunen? Geloof me, OS/2 is dood!
"Ik ben Bill Gates van MicroBorg. Dit besturingssyteem zal geassimileerd worden. 
Software-ontwikkeling is nutteloos."

:li.Ik deed de vertaling naar een andere taal en heb reeds een e-mail bericht
gestuurd, samen met de vertaalde bestanden &colon.-) 

:li.Ik kan niet schrijven! Ik weet niet hoe ik een e-mail bericht moet verzenden!! 
Ik heb zelfs geen e-mail adres!!! En ik gebruik Windows!!!!

:eul.



.*-------------------------------------------------------------------------
.*fold00.*Dedicatie

:h1 id=dedication.Dedicatie
:p.&progname. is opgedragen aan :hp1."Hackers":ehp1., wellicht de slechtste film 
over computers en informatietechnologie ooit. Het is echter een fantastische komedie,
waarbij ik bijna de helft van de tijd slap heb gelegen van het lachen,
(eigenlijk alleen wanneer ik niet zat te schreien).

:p.BTW, ik wed dat "da Vinci" alle systemen op de knieen zou hebben gekregen alleen 
al door z'n behoefte aan recources ...
:p.BTW 2&colon. Misschien had men :hp1.de film:ehp1. beter 
"The Plague" genoemd?

:p.Nee, natuurlijk is dit niet de echte dedicatie ...

:p.:artwork name='src/data/godzilla.bmp' align=center.
:hp2.
.ce Deze versie van Minta is opgedragen aan Godzilla.
:ehp2.

.*-------------------------------------------------------------------------
.*fold00.*More ...
:h1 id=moreprogs.Nog meer van hetzelfde ...
:p.&progname. is zeer zeker niet het enige OS/2 programma dat ik heb geschreven.
Hieronder een lijstje van nog andere :hp1.gratis verkrijgbare:ehp1. programma's &colon.

:dl break=all tsize=5.

:dt.:hp2.Gotcha!:ehp2. (Schermcaptatie programma)
:dd.Capteert vensters, inhoud van vensters, (delen van) het scherm. Tijdsgestuurd, 
automatisch, herhaalde captatie. Bewaren in een bestand of op het klembord,
enz.

:dt.:hp2.Wanda:ehp2. ("Klevende memobriefjes" op uw Werkblad)
:dd.Memovensters in verschillende kleuren en grootte, enz. Groot aantal instelmogelijkheden.
Afdrukken, bewaren, enz.

:dt.:hp2.Carrie R. Lust:ehp2. (Telefoonkosten/online tijdsregistratie)
:dd.11 verschillende (instelbare) tarieven. 4 (instelbare) waarschuwingsniveau's.
Registratie van alle connecties, enz.

:dt.:hp2.Xened:ehp2. ("Xenon II" editor)
:dd.Wijzig de prijs van wapens, bewerk mappen, tips, truckjes, enz.
Ook verkrijgbaar voor DOS en Linux.

:dt.:hp2.CAD/Off:ehp2. ("Reboot slot")
:dd.Deactiveert de CTRL-ALT-DEL toetsencombinatie van uw systeem.

:dt.:hp2.Tomo:ehp2. (Tetris-kloon)
:dd.Nog meer "blokken", aanpasbaar spelvenster, enz. Jammer genoeg is het 
alleen voor DOS beschikbaar en enkel in het Duits (Ik ben de broncode kwijt geraakt ...)

:edl.
:p.Naast de programma's in deze lijst, heb ik er momenteel nog een aantal andere in ontwikkeling
(waaronder zelfs enkele spelletjes!). Neem een kijkje op &www./projects.html voor meer 
informatie ! 

.*-------------------------------------------------------------------------

:euserdoc.
