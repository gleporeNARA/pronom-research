:userdoc.

.im src\common.ipf

.*****************************************************
.*
.* NORWEGIAN TRANSLATION OF MINTA HELP FILE
.*
.* ChangeLog:
.*   1999-02-25  (HÜvard Mork (haavard@mork.com))
.*       Initial Translation started.
.*   1999-#####  (HÜvard Mork (haavard@mork.com))
.*       Initial Translation completed.
.*
.*
.* CURRENT LINE BEING TRANSLATED: 735 (1999-03-13)
.*
.*****************************************************
.*   msg from HÜvard Mork (
.* Please excuse my bad translation, but I do not have that much time.
.* I am a full-time student, so please do not condemn me.. :)
.*****************************************************

.* There are some song titles and band names used in the examples in this
.* file. Please do not translate them.

.*-------------------------------------------------------------------------
.*fold00.*About the program

:h1 id=about res=1000.Om programmet
:fn id=mp3.
:p.MP3 er et format for Ü kode lyd-data (sanger, musikk-stykker osv.)
som tillater mye lyd til Ü bli kodet til fÜ bytes (dvs. veldig god
kompresjonsnivÜ)
:efn.

:fn id=tag.
:p.En MP3-fil kan ha en "ID3 signatur" lagt til, som bare er en et
stykke informasjon pÜ slutten av filen, som inneholder informasjon om
lyd-stykket&colon. Tittel, Artist, Album, èr, en kommentar,
musikksjangeren, spor-nummer (ID3 v1.1). Denne informasjonen blir vist
av mange MP3-spillere.
:efn.

.*-------------------------------------------------------------------------

:artwork name='src/data/minta.bmp' align=center.
:p.Attention&colon. This version of the documentation may be outdated or
incomplete. If you think you missed something, see the English or German
version!

:p.Dette programmet vil vise informasjon om :link refid=mp3
reftype=fn.MP3:elink. audio-filer, og lar deg legge til en :link refid=tag
reftype=fn.ID3 informasjons-signatur:elink. til dem.

:p.I tillegg til Ü la deg arbeide med enkelt-filer, gir &progname. deg
mulighet til Ü forandre signaturene til flere filer ganske enkelt,
enten en etter en, eller alle pÜ en gang.

:p.Du kan ogsÜ fjerne signaturene fra en eller flere filer og
automatisk skifte navn pÜ filer.

:p.Programmet kan ogsÜ lage en liste over alle MP3-filene, med all -
eller bare utvalgt informasjon - for hver fil.


:p.:hp2.Hva er nytt?:ehp2.

:p.Hvis du vil finne ut hva som er nytt eller forandret i denne
utgaven, se :link refid=history reftype=hd.versjons-historie:elink.

:p.Vër oppmerksom pÜ at det er flere ting som kan (og vil) bli lagt til
i programmet i fremtidige versjoner. Send meg kommentarene dine om hva
du õnsker ... (men jeg kan ikke love noe ;-)

:p.:hp2."Registrering":ehp2.

:p.&progname. er 'mailware', derfor vër sÜ snill Ü sende et kort brev
(eller et postkort e.l.) hvis du bruker &progname.! (se ogsÜ :link
refid=register reftype=hd."Topp-10 grunner hvorfor ikke registrere &progname."
:elink.;-)



.*-------------------------------------------------------------------------
.*fold00.*The windows

:h1 id=windows res=2000.Vinduene
:p.Denne seksjonen forteller om de forskjellige vinduene i &progname.,
hvilke funksjoner de har, og hvordan du bruker dem.
:p.
:ul compact.
:li.:link refid=mainwindow reftype=hd.Hovedvinduet:elink.
:li.:link refid=settingswindow reftype=hd.Oppsettvinduet:elink.
:li.:link refid=listwindow reftype=hd.Listevinduet:elink.
:li.:link refid=autoopenwindow reftype=hd.AutoÜpne-vinduet:elink.
:li.:link refid=renamewindow reftype=hd.Navneforandrings-vinduet:elink.
:eul.

.*-------------------------------------------------------------------------
.*fold00.*The main window

:h2 id=mainwindow res=2100.Hovedvinduet
:p.Hovedvinduet er vinduet hvor du gjõr det meste av arbeidet. Her kan
du forandre signaturene til filene og fÜ informasjon om dem.

:p.Vinduet har fõlgende seksjoner&colon.
:ul compact.
:li.:link refid=filelist reftype=hd.Liste over valgte filer:elink.
:li.:link refid=fileinfo reftype=hd.Filinformasjons-visning:elink.
:li.:link refid=taginfo reftype=hd.Signaturinformasjons-visning:elink.
:li.:link refid=buttons reftype=hd.Knappene og menyen:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*The selected files list

:h3 id=filelist res=2110.Liste over valgte filer
:p.Denne listen inneholder de valgte filene, f.eks. de filene du
arbeider
med.

:dl break=all tsize=5.

:dt.:hp2.Legge til filer i listen:ehp2.
:dd.Det er mange mÜter Ü legge til filer i listen&colon.
:ul.

:li.Du kan bruke fil-dialogen som kommer frem nÜr du trykker
"èpne"-knappen eller velger "èpne..." fra Fil-menyen.


:li.Du kan instruere &progname. til Ü :hp1.lete gjennom katalogene for
filer Ü legge til:ehp1., ved Ü trykke "Auto-Üpne..." fra Fil-menyen.
En :link refid=autoopenwindow reftype=hd.katalog-dialog:elink. kommer
frem, der du kan velge katalogen der det skal sõkes etter MP3-filer som
skal legges til.

:p.:hp1.Merknad&colon.:ehp1. Det vil ogsÜ bli sõkt i alle underkataloger av den valgte
katalogen.

:li.Du kan slippe filer og/eller kataloger pÜ &progname. hoved-vindu
ved Ü bruke direkte manipulasjon (dra-og-slipp). Filene vil automatisk
bli lagt til listen, og det sõkes etter filer Ü legge til i kataloger.
:eul.

:dt.:hp2.Fjerne filer fra listen:ehp2.
:dd.Det er mange mÜter Ü fjerne filer fra listen&colon.
:ul.
:li.For Ü fjerne den valgte filen, trykk ALT+'d' eller velg "Fjern
valgt" fra Fil-menyen.
:li.For Ü fjerne alle filer fra listen, velg "Fjern alle" fra
Fil-menyen.
:eul.

:edl.

:p.Globale fil-operasjoner som "Lagre alle" og "Fjern alle" omhandler
alle filene som er i listen.

:p.Enkelt-fil-operasjoner som "Lagre" og "Fjern" omhandler bare filen
som er valgt i listen.

:p.Tittelen av denne seksjonen viser hvor mange filer som er i listen.

:p.Hvis du trykker ALT+'n' (eller velger "Lagre &amp. neste" i
Signatur-menyen) vil automatisk lagre den valgte filen og gjõre den
neste filen i listen til den valgte filen. Hvis du trykker ALT+'p'
(eller velger "Lagre &amp. forrige" i Signatur-menyen) vil gjõre det
samme, men den forrige filen blir valgt. PÜ denne mÜten kan du lett
forandre mange filer en for en.


.*-------------------------------------------------------------------------
.*fold00.*The file information display

:h3 id=fileinfo res=2120.Filinformasjons-visning
:p.Denne seksjonen av vinduet viser teknisk informasjon om den valgte
MP3-filen. Verdiene er tatt direkte i fra MP3-filen og kan ikke forandres.

:dl break=all tsize=5.

:dt.:hp2.Versjon:ehp2.
:dd.Dette feltet viser :hp1.versjonen:ehp1. av MP3-filen.

:dt.:hp2.MPEG-nivÜ:ehp2.
:dd.Dette feltet viser :hp1.MPEG-strõmmens nivÜ (Layer):ehp1. (1, 2 or 3) i MP3-fila.

:dt.:hp2.Frekvens:ehp2.
:dd.Dette feltet viser :hp1.opptaks-frekvensen:ehp1. eller
:hp1.opptaks-graden (hastigheten):ehp1. i filen.

:dt.:hp2.Bit-hastighet:ehp2.
:dd.Dette feltet viser :hp1.bit-hastigheten:ehp1. i MP3-filen.
Bit-hastigheten forteller MP3-spilleren hvor mange biter som skal
spilles hvert sekund.

:dt.:hp2.Modus:ehp2.
:dd.Kan vëre stereo, forent stereo, dobbel-kanal eller mono (enkel-kanal).
Ikke spõr meg om hva forent stereo eller dobbel-kanal er &colon.-)

:dt.:hp2.Est. tid:ehp2.
:dd.Den estiminerte (beregnede) spilletiden av MP3-filen. Den er
kalkulert ut fra stõrrelsen og bit-hastigheten av filen.

:dt.:hp2.Trykk:ehp2.
:dd.Skjeldent brukt. Noe relatert til stõy-reduksjon.

:dt.:hp2.Privat:ehp2.
:dd.Forteller om MP3-filen er privat eller ikke - hva nÜ det skal bety.

:dt.:hp2.Kopibeskyttelse:ehp2.
:dd.Dette forteller om MP3-filen er kopibeskyttet.

:dt.:hp2.Original:ehp2.
:dd.Dette forteller om MP3-filen er en original eller en kopi. Jeg vet
ikke helt hva dette er godt for - eller hvem som forandrer den.

:dt.:hp2.CRC:ehp2.
:dd.Forteller om MP3-filen har noen form for feil-korrigering (Syklisk
redundans-sjekk) inkludert.

:dt.:hp2.Padding:ehp2.
:dd.Dette forteller om tekniske saker i relasjon til utformingen av
MP3-filen.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*The tag information display

:h3 id=taginfo res=2130.Signatur-informasjons visning
:fn id=boc.
:p.Finnes pÜ albumet "Imaginos" fra Blue &Oe.yster Cult.
:efn.
:fn id=sid.
:p.Tatt fra teksten av "Shut it down" fra Mot&oe.rhead's album "Iron
fist".
:efn.
.*-------------------------------------------------------------------------
:p.Denne seksjonen av vinuet viser informasjon som er lagret i
ID3-signaturen i filen. Du kan fritt forandre disse verdiene (eller
skrive inn nye hvis filen ikke hadde en vedlagt signatur fõr). Selvsagt
bare hvis filen ikke er skrive-beskyttet (f.eks. hvis den ligger pÜ en
CD-ROM).

:p.:hp1.Merknad&colon.:ehp1.Begrensningene i lengde er i
ID3-signaturen, sÜ ikke klag pÜ meg hvis du ikke klarer Ü skvise :link
refid=boc reftype=fn."The siege and investiture of Baron von Frankenstein's
castle at Weisseria":elink. inn i tittel-feltet ...

:dl break=all tsize=5.

:dt.:hp2.Tittel:ehp2.
:dd.Tittelen av sangen (eller hvilket lydstykke filen inneholder).
Kan vëre opptil 30 tegn langt.

:dt.:hp2.Artist:ehp2.
:dd.Mozart, Black Sabbath, Bananarama, en bjeffende katt ... du
skjõnner dette.
Kan vëre opptil 30 tegn langt.

:dt.:hp2.Album:ehp2.
:dd.Hvilket album sangen/lydstykket kommer fra. Hvis det ikke er fra
noe album, kan du la dette feltet vëre blankt hvis du vil.
Enda et felt som kan inneholde opptil 30 tegn.

:dt.:hp2.èr:ehp2.
:dd.NÜr sangen ble tatt opp, publisert, nr.1 pÜ listene, eller hva du
mÜtte synes passer her - til og med bokstaver, siden det ikke er noen
begrensning til bare tall. Hvem vet hva dette kan vëre godt for .. opp
til 4 tegn i dette feltet.

:dt.:hp2.Sjanger:ehp2.
:dd.Hvilken type musikk det er. Velg fra den utfyllende listen. Jeg vet
ikke hvem som "finner opp" disse sjangrene, men de synes Ü vëre
allmennakseptert, sÜ ikke spõr meg for Ü legge til eller fjerne noen av
dem. Hvis du vil kan du forandre dem selv. (se ogsÜ :link refid=genresfile
reftype=hd."Sjanger-filen":elink.).

:dt.:hp2.Kommentar:ehp2.
:dd.Plasser en kommentar her. Selvsagt ikke om programmet, men om
MP3-filen. 30 tegn (bare 28 hvis du bruker "Spor #").
:p.:hp1.Merknad&colon.:ehp1. Du mÜ kanskje bruke makroer her, som vil
automatisk bli skiftet ut med passende verdier nÜr signaturen blir
lagret (dette virker ogsÜ for "Lagre alle")&colon.
:ul compact.
:li.$T - Tittel
:li.$A - Artist
:li.$a - Album
:li.$Y - èr
:li.$G - Sjanger (Genre)
:li.$v - MPEG versjons-nummer
:li.$l - Filens nivÜ (Layer)
:li.$t - Estiminert (beregnet) spilletid
:li.$m - Modus
:li.$f - Frekvens
:li.$b - Bit-hastighet
:li.$r - Spor
:eul.
:p.:hp1.Eksempel&colon.:ehp1. Hvis du skrev "Spilletid=$t, Modus=$m" her
og lagret, ville kommentaren bli "Spilletid=03&colon.14, Modus=Stereo"

:dt.:hp2.Spor #:ehp2.
:dd.Her kan du skrive inn hva spor-nummeret pÜ sangen var (hvis den kom
fra en CD e.l.)
:p.:hp1.Merknad&colon.:ehp1. Dette feltet er en utvidelse av ID3 v1.0
(det er v1.1). Hvis du setter denne til 0, vil signaturen vëre v1.0,
mens hvis du setter den til noe annet enn 0, vil den vëre v1.1.
Spor-nummeret blir lagret i de 2 siste tegnene av kommentaren, derfor
vil kommentaren bare vëre 28 tegn stor. Hvis du allerede har skrevet 29
eller 30 tegn, vil kommentaren bli kuttet nÜr du lagrer.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*The push buttons + menu

:h3 id=buttons res=2140.Knappene og menyen
:dl break=all tsize=5.
:dt.:hp2.èpne...:ehp2.
:dd.Denne vil Üpne en fil-dialog som lar deg velge filer du vil legge
til i :link refid=filelist reftype=hd.listen over valgte filer
:elink..

:dt.:hp2.Auto-Üpne...:ehp2. (Kun meny)
:dd.Denne vil Üpne en :link refid=autoopenwindow
reftype=hd.katalog-dialog:elink. som lar deg velge katalogen der det
skal letes etter filer du õnsker Ü legge til i :link refid=filelist
reftype=hd.listen over valgte filer:elink.. Det sõkes i underkataloger
ogsÜ.

:dt.:hp2.Slett valgt:ehp2. (Kun meny)
:dd.Dette vil slette den valgte filen fra :link refid=filelist reftype=hd.listen over valgte filer:elink..

:dt.:hp2.Fjern alle:ehp2. (Kun meny)
:dd.Dette vil fjerne alle filer fra :link
refid=filelist reftype=hd.listen over valgte filer:elink..

:dt.:hp2.Gi nytt navn...:ehp2. (Kun meny)
:dd.Dette vil Üpne :link refid=renamewindow
reftype=hd.navneendrings-dialogen:elink., som lar deg Ü automatisk
forandre navn pÜ alle filene ved Ü bruke et mal-navn (ogsÜ med makroer)
som et mõnster for navneendringen.

:dt.:hp2.Liste...:ehp2.
:dd.Dette vil Üpne :link refid=listwindow
reftype=hd.liste-dialogen:elink., som gir deg mulighet for Ü lage en
liste over alle de valgte filene som du kan lagre. Du kan velge hvilken
informasjon som skal bli inkludert i listen for hver fil.

:dt.:hp2.Avslutt:ehp2.
:dd.Som du kanskje allerede har gjettet, vil dette avslutte programmet.
Du mÜ lagre det du ikke vil miste, siden det ikke er noen "Virkelig
avslutte?".

:dt.:hp2.Lagre (valgt):ehp2.
:dd.Dette vil lagre dataene i :link refid=taginfo
reftype=hd."signatur-informasjon" boksene:elink. som signatur for den
valgte filen.

:dt.:hp2.Lagre &amp. neste:ehp2. (Kun meny)
:dd.Dette vil automatisk lagre den valgte signaturen og aktivere den neste
filen i listen.

:dt.:hp2.Lagre &amp. forrige:ehp2. (Kun meny)
:dd.Dette vil automatisk lagre den valgte signaturen og aktivere den
forrige filen i listen.

:dt.:hp2.Lagre alle:ehp2.
:dd.Dette vil lagre dataene i :link refid=taginfo
reftype=hd."signatur-informasjon" feltene:elink. som signaturen for
alle filene i :link refid=filelist reftype=hd.listen over valgte filer:elink..
:p.Hvis du lar en eller flere av tekst-boksene vëre tomme (og det betyr
:hp1.tomme:ehp1., ingen ordskillere, ingenting!) vil verdien av
feltet/feltene ikke bli forandret hvis filen allerede har et slikt
felt. è velge "(none)" for sjanger-feltet har den samme effekten for
dette feltet.

:dt.:hp2.Fjerne (valgt):ehp2.
:dd.Denne vil fjerne signaturen fra den valgte filen - hvis den har en
(hvis ikke, vil denne funksjonen ikke vëre tilgjengelig). Ikke sÜ
veldig nyttig for Ü frigjõre disk-plass siden den bare korter fila 128
bytes.

:dt.:hp2.Fjerne alle:ehp2.
:dd.Denne vil fjerne signaturene fra alle filene i :link refid=filelist
reftype=hd.listen over valgte filer:elink.. Bruk med forsiktighet!

:dt.:hp2.Spill fil:ehp2. (Kun meny)
:dd.Denne vil starte en MP3-spiller etter ditt valg med den valgte
filen.
Se :link refid=playercmdfiles reftype=hd.Avspiller CMD-filer:elink. for
mer informasjon.

:dt.:hp2.Vis knapper:ehp2. (Kun meny)
:dd.Denne vil vise (hvis gjemt) eller gjemme (hvis vist) knappene pÜ
hõyre side av vinduet.

:dt.:hp2.Vis filinformasjon:ehp2. (Kun meny)
:dd.Denne vil vise (hvis gjemt) eller gjemme (hvis vist) :link
refid=fileinfo reftype=hd.filinformasjons-gruppen:elink..

:dt.:hp2.Hjelp Innhold:ehp2. (Kun meny)
:dd.Denne vil vise innholdet av denne online-hjelpen.

:dt.:hp2.(Generell) Hjelp:ehp2.
:dd.Denne vil vise denne hjelpen, men jeg regner med du har funnet
den allerede. ;-)

:dt.:hp2.Om... / Produktinformasjon:ehp2.
:dd.Denne vil vise en meldings-boks med informasjon om versjonen av
&progname. du bruker, hvordan du kan nÜ programmereren osv.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*The settings window

:h2 id=settingswindow res=2200.Oppsett-vinduet
:p.Oppsettvinduet lar deg forandre forskjellige ting, som for eksempel
hvis du vil at &progname. skal informere om spesielle hendinger (f.eks.
nÜr filer har blitt lagt til i :link refid=filelist reftype=hd.listen
over valgte filer:elink.)
eller hvilket sprÜk du vil bruke.

:p.Hvis du velger "OK"-knappen pÜ bunnen av vinduet, vil vinduet lukkes
og oppsettet vil bli aktivt. Hvis du velger "Gjõr om" vil alle
forandringer pÜ den siden du er pÜ bli satt tilbake til det de var fõr.
"Hjelp" vil vise hjelp-skjermen for siden du er pÜ.

:p.Oppsett-dialogen har fõlgende sider&colon.
:ul compact.
:li.:link refid=notification reftype=hd.Informering:elink.
:li.:link refid=keepinfo reftype=hd.Behold informasjon:elink.
:li.:link refid=misc reftype=hd.Diverse:elink.
:li.:link refid=language reftype=hd.SprÜk:elink.
:eul.


.*-------------------------------------------------------------------------
.*fold00.*Notification

:h3 id=notification res=2210.Informerings-siden
:p.PÜ denne siden kan du velge hvilke hendinger &progname. skal gi
beskjed om, og hvordan det skal bli gjort.

:dl break=all tsize=5.

:dt.:hp2.Informer meg nÜr ...:ehp2.
:dd.Her kan du velge hvilke hendinger du vil bli informert om. Dette er
ganske selvforklarende.

:dt.:hp2.Informerings-stil:ehp2.

:dd.Her kan du velge hvordan du vil bli informert.
:ul.
:li."Trykk-vekk meldings-boks" vil vise et meldings-vindu med en
"Ok"-knapp som du mÜ trykke pÜ for Ü lukke vinduet.
:li."Tidskontrollert auto-varsler" vil vise et meldings-vindu som vil
automatisk forsvinne etter flere sekunder (du kan ogsÜ trykke pÜ det
med muspekeren for Ü lukke det).
:li."Lyd-melding" vil bare sende tre pipelyder til den innebygde hõyttaleren.
:eul.

:edl.


.*-------------------------------------------------------------------------
.*fold00.*Keep info

:h3 id=keepinfo res=2220.Behold informasjon-siden
:p.PÜ denne siden kan du velge om (noen av) signatur-feltene skal bli
beholdt nÜr du bytter filer ved bruk av ALT+'n' eller ALT+'p'.

:dl break=all tsize=5.

:dt.:hp2.Behold (noen) signatur-felter nÜr skifter fil:ehp2.
:dd.Velg denne knappen hvis du vil bruke "Behold Info"-funksjonen. Hvis
du ikke velger denne knappen, vil den nye filen bare fÜ informasjonen
som er lagret i sin egen signatur.

:dt.:hp2.Behold ...:ehp2.
:dd.Her kan du velge hvilke felter i signaturen som skal bli beholdt.

:dt.:hp2.Alternativer:ehp2.
:dd.Noen alternativer for "Behold Info"-funksjonen.
:ul.
:li."Ok/senk spor-nummer" - hvis du aktiverer dene, vil spor-nummeret
automatisk bli okt nÜr du bytter til neste, eller senket nÜr du bytter
til forrige fil.
:li."Bare behold hvis ikke-eksisterende" - Hvis du aktiverer denne,
blir informasjon som er valgt til Ü bli beholdt, overfort kun hvis den
nye filen ikke har denne informasjonen (f.eks. tekst-feltet er tomt,
spor er 0, sjanger er "(ingen)"). Hvis den nye filen har denne
informasjonen, vil dette feltet ikke bli forandret.
:eul.
:edl.
:p.:hp1.Eksempel&colon.:ehp1. Du velger "Tittel" og "Artist" i "Behold ..."
gruppen og "Bare behold hvis ikke-eksisterende" (og "Behold (noen)
signatur-felter nÜr skifter fil" ogsÜ selvsagt) er aktivert. Den valgte
filens tittel er "I wish you were a beer" og artisten "Cycle Sluts from Hell".
Du trykker ALT+'n' (eller velger "Lagre &amp. Neste" fra
"Signatur"-menyen). Den nye filen har allerede en tittel (la oss si
"Dark Ships"), men ingen artist. Informasjonen i feltene for den nye
filen vil nÜ vise "Dark Ships" som tittel, og "Cycle Sluts from Hell" i
artist-feltet.
:p.Hvis du ikke hadde valgt "Behold bare hvis ..." i eksemplet ovenfor,
ville tittelen i den nye filen vëre "I wish you were a beer".

:p.:hp1.Merknad&colon.:ehp1. NÜr du bruker "Behold Info" og kommer til
en fil som er skrivebeskyttet og "Behold bare hvis ikke-eksisterende"
er valgt, vil &progname. ikke beholde informasjonen i den originale
filen men bruke denne informasjonen fra nÜ av. Dette vil
forhÜpentligvis bli rettet i en fremtidig utgave.


.*-------------------------------------------------------------------------
.*fold00.*Misc

:h3 id=misc res=2230.Diverse-siden
:p.PÜ denne siden kan du forandre diverse konfigurasjon.

:dl break=all tsize=5.

:dt.:hp2.Les sjangre fra fil ...:ehp2.
:dd.Her kan du skrive inn navnet pÜ tekst-fila der &progname. finner
navnene pÜ sjangrene. For mere informasjon, se :link
refid=genresfile reftype=hd."Sjanger-filen":elink..

:dt.:hp2.Spiller-kommando:ehp2.
:dd.Her kan du skrive inn kommandoen som skal bli brukt for Ü starte en
MP3-spiller nÜr du velger "Spill valgt" fra "Ekstra" :link refid=buttons
reftype=hd.menyen:elink. i :link refid=mainwindow
reftype=hd.hoved-vinduet:elink.. Skriv $f der filnavnet skal bli satt
inn i kommando-linjen.

:p.:hp1.Merknad&colon.:ehp1. For noen tekniske grunner mÜ du bruke en
CMD-fil for Ü starte spilleren. è direkte starte EXE-filen virker
nodvendigvis ikke. Jeg har inkludert :link refid=playercmdfiles
reftype=hd.kommando-filer (CMD) for de fleste velkjente MP3-spillerne:elink.
for OS/2 i &progname.-distribusjonen. Du bor forandre den du onsker til
Ü passe din konfigurasjon (dette kan bli gjort med hvilken som helst
tekst-editor).

:p.:hp1.Eksempel&colon.:ehp1. Skriv "goPM123 $f" her hvis du vil bruke
PM123 til Ü spille filene.

:dt.:hp2.Andre valg:ehp2.
:dd.Her kan du forandre forskjellig annen konfigurasjon&colon.
:ul.

:li."Bruk filnavn som tittel nÜr filen ikke har noen" - hvis du velger
denne, vil &progname. automatisk sette inn filens filnavn i
tittel-feltet i :link refid=taginfo reftype=hd.signatur-informasjons
gruppen:elink. nÜr filen ikke har tittel-informasjon.

:li."Bruk egen fil-dialog" - Hvis du velger denne, vil Minta bruke sin
egen fil-dialog (som kan sies Ü se litt bedre ut enn den standard
system-dialogen).

:li."Ingen advarsler om odelagte filer" - &progname. kan noen gang ikke
forstÜ strukturen i MP3-filer (noen filer har virkelig merkelige
strukturer) og vil da anta at filen ikke er en gyldig MP3-fil (dette
vil ogsÜ hende hvis filen ikke er en gyldig MP3-fil!). Hvis du har
mange slike filer, kan du slÜ av advarselen som &progname. vil vise i
et slikt tilfelle.

:li."Skrivebeskyttede filers &colon. felter skrivebeskyttet" - Normalt sett
hvis den valgte filen er skrivebeskyttet, vil &progname. gjore alle
feltene i :link refid=taginfo reftype=hd.signatur-informasjons
gruppen:elink. utilgjengelig. Siden dette gjor dem vanskelig Ü lese,
kan du velge dette for at &progname. bare skal gjore feltene skrivebeskyttet
slik at du ikke kan forandre dem.

:eul.
:edl.


.*-------------------------------------------------------------------------
.*fold00.*SprÜk

:h3 id=language res=2240.SprÜk-siden
:p.PÜ denne siden kan du velge hvilket sprÜk &progname. skal bruke. Du
kan velge hvilket som helst sprÜk som er vist i listen.
select any of the languages that are shown in the list.

:p.:hp1.Merknad&colon.:ehp1. Hvis du velger et annet sprÜk her, vil
forandringene ikke bli gyldige inntil du har startet programmet pÜnytt.

:p.:hp1.Merknad&colon.:ehp1. Hvis du vil oversette &progname. til et
annet sprÜk, er det bra! Vennligst se :link refid=helpwanted
reftype=hd."Hjelp onsket!":elink. for mere informasjon.


.*-------------------------------------------------------------------------
.*fold00.*The list window
:h2 id=listwindow res=2300.Liste-vinduet
:p.Dette vinduet lar deg skrive en liste over alle valgte filer til
disk. Listen vil inneholde en linje for hver fil.

:dl break=all tsize=5.

:dt.:hp2.Filnavn &amp. "Finn..." knapp:ehp2.
:dd.Her kan du skrive inn navnet pÜ filen der listen skal bli lagret
til. Hvis du trykker pÜ "Finn..." kanppen, vil du fÜ en fil-dialog der
du kan enklere velge filen.


:dt.:hp2.Inkludert informasjon:ehp2.
:dd.Her kan du velge hvilken informasjon fra signaturen som skal bli
inkludert i listen for hver fil. Vennligst velg minst ett felt.
Rekkefolgen av feltene kan ikke bli forandret nÜ (kanskje i en
fremtidig versjon).

:dt.:hp2.Skriv liste-tittel:ehp2.
:dd.Hvis du velger denne knappen, vil listen inneholde en tittel for
informasjons-radene.


:dt.:hp2.Skriv lokal tid:ehp2.
:dd.Hvis du velger denne knapen, vil spilletiden for alle filene i
listen bli summert og inkludert pÜ slutten av listen.

:dt.:hp2.Auto-storrelse pÜ rader:ehp2.
:dd.Hvis du velger denne knappen, vil informasjons-rekkene i listen fÜ
storrelse lik det lengste feltet i denne rekken. Hvis den ikke er
valgt, vil maksimum-lengden av informasjons-feltet bli brukt.
:p.:hp1.Merknad&colon.:ehp1. Hvis du inkluderte filnavn &amp. katalog,
vil feltet alltid bli auto-forstorret/minsket; jeg synes ikke det ser
bra ut Ü sette rad-vidden til 256 bokstaver (maks-storrelsen til HPFS)
hele tiden. Vennligst ogsÜ bemerk at denne funksjonen vil nesten doble
tiden brukt for Ü lage listen, siden &progname. mÜ forst sjekke alle
filene for Ü finne maksimum-lengdene pÜ feltene (med unntak av
filnavn/katalog-feltene, der lengden er regnet ut nÜr de er lagt til i
:link refid=filelist reftype=hd.listen over valgte filer:elink.).

:dt.:hp2.Bare filer med signatur:ehp2.
:dd.Hvis du velger denne knappen, vil kun filer som har en ID3-signatur
bli skrevet til listen. Filer uten signaturen vil bli ignorert.

:dt.:hp2.Ok:ehp2.
:dd.Denne knappen vil lagre listen til den valgte ut-filen.

:dt.:hp2.Avbryt:ehp2.
:dd.Denne knappen vil lukke vinduet uten Ü gjore noen forandringer.

:dt.:hp2.Hjelp:ehp2.
:dd.Denne knappen viser hjelpe-skjermen.

:edl.

.*-------------------------------------------------------------------------
.*fold00.*The renaming window
:h2 id=renamewindow res=2500.Navneforandrings-vinduet
:p.Dette vinduet lar deg forandre navn pÜ alle filene i listen ved
hjelp av en konfigurabel mal-streng.

:dl break=all tsize=5.

:dt.:hp2.Navneforandrings-mal:ehp2.
:dd.Dette feltet inneholder mal-strengen. Du kan skrive inn hvilken som
helst kombinasjon av tekst og makroer. Alle filer vil fÜ navnet
forandret ved Ü bruke denne malen. Hvis et navn allerede finnes, vil
filen bli gitt det samme navnet, men med et unikt nummer pÜ slutten.
:p.Folgende makroer er tilgjengelig og vil automatisk bli skiftet ut
med respektive verdier&colon.
:ul compact.
:li.$T - Tittel
:li.$A - Artist
:li.$a - Album
:li.$Y - èr
:li.$G - Sjanger
:li.$C - Kommentar
:li.$v - MPEG versjons-nummer
:li.$l - Filens nivÜ (Layer)
:li.$t - Estiminert (beregnet) spilletid
:li.$m - Modus
:li.$f - Frekvens
:li.$b - Bit-hastighet
:li.$r - Spor
:eul.
:p.:hp1.Eksempel&colon.:ehp1. Hvis du skrev "($A)-$T" her, og tittelen
av den forste filen "Eat the Rich" av "Mot&oe.rhead", vil det nye
filnavnet vëre "(Mot&oe.rhead)-Eat the Rich.mp3".
:p.:hp1.Merknad&colon.:ehp1. Alle bokstaver som ikke er tillatt i
HPFS-filnavn ("*", "?", etc.) vil bli oversatt til '_' for navneendringen.

:dt.:hp2.Begrens navnelengden til ikke mere enn ...:ehp2.
:dd.Spesielt nÜr du lager CDer der filsystemet ikke tillater lengre
navn enn 31 tegn, vil denne funksjonen vëre nyttig. Navnene vil
automatisk bli begrenset til det gitte nummer bokstaver (dette
inkluderer fil-etternavnet i filen!)

:dt.:hp2.Erstatt tomrom med understreker:ehp2.
:dd.Hvis du ikke liker tomrom i filnavnene, velg dette, og de vil bli
erstattet med '_'.

:dt.:hp2.Gi nytt navn:ehp2.
:dd.Denne knappen starter navneendrings-prosessen.

:dt.:hp2.Avbryt:ehp2.
:dd.Denne knappen vil lukke vinduet og ikke gjore noe mer.

:dt.:hp2.Help:ehp2.
:dd.Denne knappen vil bringe opp hjelpe-skjermen.

:edl.
:p.:hp1.Merknad&colon.:ehp1. Denne funksjonen vil mislykkes (dvs. vise
en feilmelding) hvis en av filenes navn vil bli for langt for
filsystemet (f.eks. pÜ en FAT-stasjon kan filnavnene bare vëre opptil 8
tegn lange).

.*-------------------------------------------------------------------------
.*fold00.*The autoopen window
:h2 id=autoopenwindow res=2400.Auto-Üpne vinduet
:p.Dette vinduet lar deg velge katalogen som skal bli gjennomsokt for
MP3-filer.

.*-------------------------------------------------------------------------
.*fold00.*Commandline arguments
:h1 id=cmdlineargs res=3000.Kommandolinje-argumenter
:p.Det eneste kommandolinje-argumentet som &progname. aksepterer er et
fil- eller katalog-navn. Dette lar deg oppgi en fil som skal bli lastet
eller en katalog som skal bli gjennomsokt for filer, i tillegg til Ü
assosiere MP3-filer med &progname. pÜ arbeidsomrÜdet (WPS).

:p.:hp1.Eksempel&colon.:ehp1. Hvis du skriver "minta c&colon.\mp3s" pÜ
kommando-linjen, vil &progname. lete gjennom katalogen "c&colon.\mp3s"
(bare hvis den er en katalog, selvsagt ;-) for MP3-filer, og
hoved-vinduet vil starte opp med alle filene funnet i katalogen i
:link refid=filelist reftype=hd.listen over valgte filer:elink..


.*-------------------------------------------------------------------------
.*fold00.*Tips + tricks
:h1 id=tipstricks res=4000.Tips &amp. tricks
:p.Here you find some tips &amp. tricks that will save you work or make
things easier when using &progname..

:dl break=all tsize=5.

:dt.:hp2.Tagging whole albums - The "Lagre all" approach:ehp2.
:dd.One way to easily tag whole albums, without having to enter the same info
over and over again is by using the "Lagre all" function&colon.
:ol compact.
:li.Load all the MP3 files belonging to the album into the :link
refid=filelist reftype=hd.listen over valgte filer:elink.. If you keep them
together in one directory, you can use the :link refid=buttons
reftype=hd.auto-open function:elink.. (Make sure that these are the only
files in the list, if necessary by using "Fjern alle" before!)
:li.Enter the Artist, Album, Year (and possibly Genre) info in the
appropriate fields of the :link refid=taginfo reftype=hd.tag info
display:elink.. Make sure, the other fields are empty (or 0, or "(none)").
:li.If you want stuff like playtime, etc. in the comment for each song, use
the appropriate :link refid=taginfo reftype=hd.macros in the comment
field:elink..
:li.Select the "Lagre all" button or "Lagre all" from the "Tag" menu. Click
"Ok" in the message box that appears. The info you entered will now be saved
for all the files.
:li.Select the first file from the :link refid=filelist reftype=hd.selected
files list:elink. and fill out the missing info (Title, Track #, etc.).
:li.When you're done, use ALT+'n' to proceed through the files and fill out
the missing stuff for all of them.
:eol.

:dt.:hp2.Tagging whole albums - The "Keep info" approach:ehp2.
:dd.The other way to easily tag whole albums is by using the "Keep info"
function&colon.
:ol compact.
:li.Open the :link refid=settingswindow reftype=hd.settings window:elink. (by
selecting "Settings..." from the "Files" menu) and turn to the "Keep info"
page.
:li.Activate (if not already activated) "Keep (some) tag info when switching
files". In the "Keep ..." group activate "Artist", "Album", "Year" and possibly
"Genre" and "Comment" too. If you want to save the Track # for each file,
activate "Increase/decrease track number".
Deactivate all other buttons on the page (if some of them are activated).
:li.Close the settings by using the "Ok" button.
:li.Load all the MP3 files belonging to the album into the :link
refid=filelist reftype=hd.listen over valgte filer:elink.. If you keep them
together in one directory, you can use the :link refid=buttons
reftype=hd.auto-open function:elink.. (Make sure that these are the only
files in the list, if necessary by using "Fjern alle" before!)
:li.Enter the Title, Artist, Album, Year (and possibly Genre) info for the
first file in the appropriate fields of the :link refid=taginfo reftype=hd.tag
info display:elink..
:li.If you want stuff like playtime, etc. in the comment for each song, use
the appropriate :link refid=taginfo reftype=hd.macros in the comment
field:elink..
:li.If you want to save the Track # for each file, set Track # to 1.
:li.Use ALT+'n' (or "Lagre &amp. next" from the "Tag" menu) to switch to the
next file in the list. Fill out the missing
fields. Use ALT+'n' to proceed through all the files and fill out the
missing stuff for all of them.
:eol.
:edl.
:p.A useful feature, that can be used in the second approach, is to activate
"Use filename as Title if file has none" on the :link refid=misc
reftype=hd."Misc" page:elink. of the :link refid=settingswindow
reftype=hd.settings window:elink.. If your files already have filenames, that
resembles the Title of the song very much (e.g. like
"I_WISH_YOU_WERE_A_BEER.MP3"), all you have to do then is modifying the Title
for each file.


.*-------------------------------------------------------------------------
.*fold00.*Past, present + future
:h1 id=pastpresentfuture res=5000.Past, present &amp. future
:p.This section provides info about the history of &progname., some info
about (bugs in) the current release and things that may be added or changed
in the future.


.*-------------------------------------------------------------------------
.*fold00.*Version history
:h2 id=history.Version history :p.Here you can see what was added or changed
in the different versions of the program.

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

:dt.:hp2.Version 2.27:ehp2.
:dd.Two bugfixes - one for &progname. and one ... ;-)
:ul compact.
:li.MP3 technical informations are now displayed correct again.
:li.&progname. now can use spaces instead of zeros to padd the tag fields
which fixes a problem of WarpAMP (see :link refid=cmdlineargs
reftype=hd.commandline argument:elink.)
:eul.

:dt.:hp2.Version 2.25:ehp2.
:dd."It's about time the played something cool!" - Yes, and therefore here
is v2.25! New features include&colon.
:ul compact.
:li.Dutch language support.
:li.Advanced auto-rename feature (rename files using a template, macros,
limit length of generated names, select if spaces shall be replaced by
underscores).
:li.ID3v2.x tags are now detected and skipped properly (sorry,
viewing/editing them is still to come ...)
:li.Better looking file dialog with file type support.
:li.Some internal code changes.
:li.Some buglets (bugs that were so small nobody noticed or merely asthetic
stuff ;-) fixed.
:eul.

:dt.:hp2.Version 2.00:ehp2.
:dd.Due to the infinite creativity of the beta testers, suggestions from users
and wishes of my own, &progname. now includes the following new features&colon.
:ul compact.
:li.As I already promised for the previous version, &progname. now loads the
genres from a user-selectable and -editable file. &progname. accepts its own
format for the file or can load WarpAMP's "genres.txt". See :link
refid=genresfile reftype=hd."The genres file":elink. for more information
about this.
:li.If a file has no entry for the "Title" field, &progname. now can
automatically use the filename as the Title.
:li.&progname. can now take a filename (or directory) as a :link
refid=cmdlineargs reftype=hd.commandline argument:elink.,
allowing you to specify the file to be loaded or the directory to be searched
for files on the command line as well as associating MP3 files with &progname. on
the WPS.
:li.&progname. now supports other languages (well, english and german by now).
:li.You may now drag'n'drop files or directories on the &progname. window and
&progname. will add the files to the :link refid=filelist reftype=hd.selected
files list:elink./search the directories for MP3 files and add them to the
list.
:li.You can now easily launch an MP3 player of your choice with the currently
selected file from &progname..
:li.When switching files, you can now specify that certain information from
the file's tag will be kept for the file being switched to (handy e.g. for
tagging whole albums).
:li.When a file is read-only, &progname. now can make the :link refid=taginfo
reftype=hd.tag info fields:elink. just read-only instead of disabled ("greyed
out"), sometimes they were a little bit hard to read then.
:li.You can now choose between three different "styles" for the notification
windows.
:li.You can now disable the "Invalid MP3 file" warning.
:li.Auto-renaming now may limit the names to 31 characters max. (useful when
creating CDROMs that only support 31 characters in filenames).
:li.Improved and extended online help/documentation.
:li.Fixed some bugs (current file not being closed when "Delete all" used,
small bug in the "Select directory ..." dialog, &progname. crashing when
listing files with invalid genres, ...)
:eul.

:dt.:hp2.Version 1.67:ehp2.
:dd.The following things were changed/added&colon.
:ul compact.
:li.&progname. now supports ID3 v1.1 tags too.
:li.You can now output Version, Layer, Frequency, Bitrate and Mode too, when
listing files.
:li.Added the autorenaming function (allows to rename all files after their
Title).
:li.You can now use macros in the comment field to automatically insert
playing time etc. there.
:li.You may now hide (and re-show) the buttons and/or the fileinfo group as
you like.
:li.Settings window, where you can enable/disable the various notification
messages.
:li.Color and font of the main window may now be easily changed using
drag'n'drop from the appropriate palettes. This values will be saved to
&inifile. too.
:li.Modified &progname.'s icon to meet the standard MP3 file icon.
:li.Fixed a few small bugs.
:eul.

:dt.:hp2.Version 1.45:ehp2.
:dd.I can't believe it! Live at last! Finally it is done ...
First release to the public.

:dt.:hp2.Version 1.44:ehp2.
:dd.I just say "v2.0" ...
:ul compact.
:li.Window title now shows currently processed file/directory while
performing global operations (Save all, etc.).
:li.Added option for outputting only tagged files to list.
:li.Replaced my own (weird, incomplete, perhaps buggy) MP3 header
decoding routine with the one from the
:link refid=credits reftype=hd.mpg123/2:elink. sources (a little bit modified).
:li.Internal restructuring of some parts of the code.
:li.Fixed some bugs, added new ones, fixed those ...
:eul.

:dt.:hp2.Version 1.41:ehp2.
:dd.No comment. But they're gonna pay for this ... (Oh no! It's freeware! ;-)
:ul compact.
:li.Added possibility for automatic selection of files in (sub)directories.
:li.Added detection and handling of read only files.
:li.Added autosize option for the columns in the MP3 file lists.
:eul.

:dt.:hp2.Version 1.34:ehp2.
:dd.I think I've got to find myself some less demanding beta testers ...
:ul compact.
:li.Added selection for files in multiple directories.
:li.Added possibility of output of filenames to the list.
:li.Added menu bar (by now, there are enough user actions to justify one ...)
:li.Fixed a number of small bugs.
:li.Added an internal version number to &inifile. to prevent possible errors
when using an old file with new versions of &progname..
:eul.

:dt.:hp2.Version 1.29:ehp2.
:dd.Again the testers requested another function to be added, and so I did.
If this continues, perhaps &progname. will become the first program with its first
release being v2.0! ;-)
:ul compact.
:li.Added function for outputting the selected files to a list.
:li.The options for the list will be saved to &inifile. too.
:li.Removed a small bug concerning the main windows' push buttons
:eul.

:dt.:hp2.Version 1.16:ehp2.
:dd.Due to the wish for additional features from the testers and ideas of my
own, the following things were added&colon.
:ul compact.
:li.Selection of multiple files
:li.Removing of tags for multiple files at once
:li.Global adding of tags for multiple files at once
:li.Easy editing of multiple files one by one
:li.Last working directory (where you selected files from) and position of the
main window will be saved to &inifile. and restored the next time you start
the program
:li.Included an install script for creating a &progname. WPS object.
:eul.

:dt.:hp2.Version 1.00:ehp2.
:dd.This version was only a beta testers' release and never made it into the
public.

.*Added ... something (yes, it's a secret)
.*:li.When doing lengthly jobs (Save all, Rename all, etc.) &progname. now displays
.*a progress status window and those jobs now have their own thread.

:edl.

.*-------------------------------------------------------------------------
.*fold00.*Bugs

:h2 id=bugs.Known bugs
:p.No "real" bugs are known at the moment, the following are more or less only
inconveniences&colon.

:ul compact.
:li.When removing all files from the listen over valgte filer, the name of the
file, which was selected last will remain in the display. For some strange
reason clearing this field does not work (But it works somewhere else! Strange
as I said).
:li.I must admit, that like most of my programs, &progname. too will not work right
when very long pathnames (> 255 chars) would have to be used (while
autorenaming e.g.). But I never have seen such a "monster" appear by now ...
:li.When changing the Title for a file, autorenaming will not rename this
file, when the tag has not been saved before. But I don't know if we really
should call this a bug.
:li.When using "Keep info" and reaching a file that is read-only or has info
for a field and "Only keep if not already present" is enabled, &progname. will
not keep the info of the "original" file but use the info of this file from
now on.
:li.Notification windows sometimes do not "inherit" the color and font from
the main window.
:li.Drag'n'drop does only work if you move the object(s) to a space on the
main window, that is not occupied by a child window (button, entry field,
etc.).
:li."Play file" requires a CMD file to start the MP3 player.
:li.I was told that the following has been fixed in WarpAMP (it happened
because there were two slightly different ID3v1.1 specifications)&colon.
The playlist of WarpAMP sometimes does not show various taginfo fields.
But as other programs (PM123 to mention one) do show everything right and
I really have no idea what eventually could be wrong with the tags, I'll just
blame it on WarpAMP ;-)
:eul.

.*-------------------------------------------------------------------------
.*fold00.*Future enhancements

:h2 id=future.Future enhancements
:p.This features will (hopefully) be included in &progname. someday&colon.
:p.:hp2."Small" stuff:ehp2.
:ul compact.
:li.Add buttons/keys for switching to the next/previous file in the list.
:li.Allow cut/copy/paste tags to/from clipboard.
:eul.
:p.:hp2."Medium" stuff:ehp2.
:ul compact.
:li.Allow different sorting of the files in the listen over valgte filer.
:li.Allow different order for the info fields when outputting lists.
:li."History" function for the tag entry fields (i.e. you'll get a drop-down
list for each field where you can choose from the last n entries).
:li.Add a (someday user configurable) toolbar to the main window.
:li.Add a statusbar to the main window (replacing the notification windows?)
:li.Lyrics3/Lyrics3 v2.00 support.
:li.Allow to read tags from a file and automatically attach them to the
files in the list.
:li.Auto-tagging function that tries to retrieve as much info as possible
from filenames, etc. and create a tag for the file out of this.
:eul.
:p.:hp2."Big" stuff:ehp2.
:ul compact.
:li.Add an MP3 database to &progname., that will allow you to to easily keep
trace of all your MP3 files, together with their info, search for files,
print lists of selected groups, export lists to other formats, and more.
:li.Allow viewing of ID3 v2.x tags.
:li.Allow editing of ID3 v2.x tags.
:li.Add feature to access (one or more of the) Internet CD database(s) through
&progname..
:eul.
:p.Tell me what feature(s) you think should have highest priority and what
feature(s) you can easily live without ...

.*:li.Add function for auto-renaming files (i.e. all files will get their
.*filename from the "Title" field for example).
.*:li.Possibility to keep (some of the) tag information when switching files
.*with ALT+N/ALT+P (may be useful for songs from one album, so you don't have to
.*enter Artist, Album, etc. everytime). Using the "Save all" function will allow
.*something like that already (i.e. insert album, artist and everything that
.*should stay the same, "Save all", then use ALT+N/ALT+P to insert the missing
.*fields).
.*:li.Allow macros in the "Comment" field, so things like playtime may be
.*inserted there automatically.
.*:li.Rename all, Save all, Remove all, Scanning/Writing the list and searching
.*for files would perhaps better have their own thread and I would like to have
.*a status window instead of displaying the stuff in the titlebar.
.*:li.Drag &amp. Drop support (add files to the selected files list by dropping
.*them on the window, adding a tag by dropping from window on the file icon,
.*etc.).
.*:li.Function for launching an MP3 player with the currently selected song.
.*:li.Settings dialog, where you can set various stuff (enable/disable the
.*various notification windows for example).
.*:li.Support other languages.
.*:li.Read genres from a user editable file (yes, yes, I promised it for this
.*release ...)
.*:li.Auto-tagging function.
.*:li.Remove the before mentioned "bugs".



.*-------------------------------------------------------------------------
.*fold00.*Files

:h1 id=files.Files
:p.This section informs you about some of the files that are supplied with
&progname.

.*-------------------------------------------------------------------------
.*fold00.*The genres file

:h2 id=genresfile.The genres file
:p.In this file, the names for the various genres are stored.
:p.Normally this file is called "genres.txt" but you can give any file you
like using the entryfield on the :link refid=misc reftype=hd.Misc page:elink.
in the :link refid=settingswindow reftype=hd.settings window:elink..
:p.You may edit this file with any common texteditor, but before you do this,
please think about the following&colon.
:ul.
:li.If you change the name of an "old" genre, all files with this genre will
now have the new name to.
:li.A second drawback of this is, that probably you are the only one who uses
this new genre definition. If anyone else gets an MP3 file set to this
genre, he/she will see the "old" genre name. Which may not be what you wanted.
:li.If you invent new genres (i.e. add some to the list) as well nobody else
will know about them. If anyone else gets an MP3 file set to one of this
genres this may result in an error or at least some confusion.
:eul.
:p.The default format for the genres file is &progname.'s own format&colon.
:xmp.
# Minta genres file
# This and the line above are comments

Blues
Classic Rock
Country
Dance
 ...
:exmp.
:p.The file is interpreted line by line. Comments (lines starting with '#')
and empty lines are ignored. Other lines are taken to be the name for a genre.
The genres are numbered in the order they are found (i.e. in the above example
Blues would be 1, Classic Rock 2 and so on). Lines (and genre names) may be
up to 255 characters long.

:p.&progname. does also understand the format of WarpAMP's "genres.txt"
(where every line consists of "nn name" with "nn" being the number and "name"
the name for that genre). Actually you can even mix the two formats and
&progname. will still try to get the right things out of it, but this is
:hp1.not recommended:ehp1.!


.*-------------------------------------------------------------------------
.*fold00.*The player CMD-files

:h2 id=playercmdfiles.Spiller CMD-filer
:p.This files are used to start an MP3 player of your choice directly out
of &progname. using the current MP3 file.
:p.For some technical reason, &progname. has to start the player by using a
CMD file, directly starting the EXE file may not work. I hope this will change
in some future release. You can give the name of the CMD file to use on the
:link refid=misc reftype=hd.Misc page:elink. of the :link refid=settingswindow
reftype=hd.settings window:elink..
:p.Please modify the file for the player of your choice to suit your needs
(basically this just means adjust installation drive and path).
:p.The following files are included&colon.
:ul.
:li.gowamp.cmd - for WarpAMP
:li.gopm123.cmd - for PM123
:li.gompg123.cmd - for mpg123
:eul.
:p.If you use some other player you should be able to easily modify one of the
files (actually they are all pretty much the same ;-) to use it with your
player.


.*-------------------------------------------------------------------------
.*fold00.*Disclaimer & legal stuff

:h1 id=disclaimer.Disclaimer &amp. legale saker
:p.Her folger de vanlige disclaimerene. For dere som har lest dem alt
for mange ganger, her er kortversjonen&colon.

:p."Jeg gjorde det ikke! Jeg gjorde det ikke! Butthead gjorde det!" ;-)

:p.Alle andre, vennligst les og legg merke til dette&colon.

:p.Dette programmet har blitt testet ganske mye, men det kan fremdeles
vëre mange feil ("Bugs") i det (til og med alvorlige feil - men det er
lite sannsynlig). Ikke skyld pÜ meg hvis programmet odelegger filer
eller informasjon e.l.

:p.:hp2.DU BENYTTER DETTE PROGRAMMET Pè EGEN RISIKO!:ehp2. Jeg tar ikke
ansvar for skader, problemer, okonomiske lidelser eller
ekteskaps-krangler osv. som er resultat av bruk, misbruk, innehavelse
eller ikke-innehavelse av dette programmet, direkte og indirekte. Jeg
gir heller ingen garanti for feilfri operasjon, andre bruksomrÜder
eller passende oppforsel av programmet nÜr det gjelder dyr,
programmerere eller smÜ barn.

:p.PROGRAMVARE ER GJORT TILGJENGELIG "SOM DEN ER" OG UTEN NOEN FORM FOR
GARANTIER, INKLUDERT, UTEN BEGRENSINGER, SELVSAGTE GARANTIER FOR HANDEL
OG BRUK TIL EN BESTEMT OPPGAVE. HELE RISIKOEN FOR KVALITET OG YTELSE ER
HOS DEG. HVIS PROGRAMMET SKULLE VISE SEG è VíRE DEFEKT, ER DU
SKADELIDENDE FOR ALLE UTGIFTER M.H.T SERVICE, REPARASJON ELLER RETTING.

:p.Eller, i noen fÜ ord&colon.
Hvis det er bra, er jeg ansvarlig.
Hvis det er dÜrlig, er det din feil. ;-)

:p.Det er gitt lov til Ü redistribuere programmet gratis, sÜ lenge det
er distribuert i sitt fullstendige arkiv med umodifisert innhold, og
ingen fortjeneste ut over prisen av mediet det har blitt distribuert
med. Unntak til den forrige regelen&colon. Det kan bli inkludert pÜ
freeware/shareware-samlinger pÜ CD-ROM, eller pÜ magasin
forside-CD-ROMer ("Cover CD-ROM").

:p.Alle varemerker nevnt hvor som helst er eid av deres respektive
eiere.

:p.(Merkelig, denne seksjonen blir lengre og lengre for hvert program ... &colon.-)


.*-------------------------------------------------------------------------
.*fold00.*Author & Minta homepage

:h1 id=author.Forfatters &amp. &progname. homepage
:p.:hp7.Forfatter:ehp7.

:dl break=all tsize=5 compact.

:dt.:hp2.Snegle-post:ehp2.
:dd.Thorsten Thielen c/o Sascha Weber, Postfach 3928, 54229 Trier, Germany

:dt.:hp2.e-post:ehp2.
:dd.&email1.

:dt.:hp2.WWW:ehp2.
:dd.&www.

:edl.

:artwork name='src/data/teamlogo.bmp' align=center.
:p.Stolt medlem av Team OS/2 Region Trier
(:hp1.www.teamos2.ipcon.de:ehp1.),
skaperne av "Team Trier Collection"-CDROM.

:lm margin=1.
:p.
Ideer og bug-rapporter er alltid velkomne. Vel... bug-rapporter er vel
kanskje ikke :hp1.sÜ:ehp1. velkomne ... ;-)
:p.
.br
:hp7.&progname. Hjemmeside:ehp7.
:p.Besok &progname. hjemmeside for informasjon og nye versjoner.&colon.
&www./minta



.*-------------------------------------------------------------------------
.*fold00.*Help wanted!
:h1 id=helpwanted.Hjelp onsket!
:p.NÜ nÜr &progname. stotter flere sprÜk, onsker jeg selvsagt Ü ha med
sÜ mange som mulig. Problemet er at jeg bare snakker engelsk og tysk
bra nok til Ü oversette til dem &colon.-) Derfor hvis noen der ute vil
oversette &progname. til et nytt sprÜk, ville det vërt fint!

:p.Jeg har inkludert kildekoden for hjelpefilen og andre
program-ressurser i et separat ZIP-arkiv ('language.zip'). Bare ta *.rc
og *.hlp filene som passer deg, og begynn arbeidet! &colon.-) Hvis du
har noen sporsmÜl, bare :link refid=author reftype=hd.spor i vei:elink.!

:p.Hvis du ikke har tid til Ü gjore (eller ikke vil ;-) en "komplett"
oversettelse (f.eks. program og online-hjelp) kan du oversette bare
program-ressursene (dialoger, menyer, noen meldinger) ogsÜ selvsagt!
Det ville allerede vërt mye hjelp...

.*-------------------------------------------------------------------------
.*fold00.*Credits

:h1 id=credits.Credits
:p.I wish to thank the following people, for their help and support with
&progname.&colon.

:ul.
:li.Thanks got to :hp1.Sascha Weber:ehp1. and :hp1.Dirk Riemekasten:ehp1. for
their excellent beta testing of &progname.
(And a kick in the *ss for forcing me to add new features all of the time ;-)
:li.Big thanks also go to the :hp1.mpg123 team:ehp1. for writing the mpg123
MP3 player and including the sources so that I could borrow their MP3 header
decoding routine! It is way better than the thing I wrote ... (You can find
out more about mpg123 at
http&colon.//www.sfs.nphil.uni-tuebingen.de/~hipp/mpg123.html).
:li.This program uses a few small pieces of code from :hp1.Richard Papo's:ehp1.
excellent "MemSize" system resources monitor (You can find out more about
MemSize at
http&colon.//www.msen.com/~rpapo).
:li.Extra specials thanks go to all the people, who translated &progname.
to other languages&colon.
:ul.
:li.Many thanks to :hp1.Luc Van Bogaert:ehp1. for the Dutch translation.
:li.Many thanks to :hp1.Guillaume Gay:ehp1. for the French translation.
:li.Many thanks to :hp1.Jostein Ullestad:ehp1. and :hp1.HÜvard Mork:ehp1.
for the Norwegian translation.
:li.Many thanks to :hp1.Cyrill Vakhneyev:ehp1. for the Russian translation.
:li.Many thanks to :hp1.Michael Baryshnikov:ehp1. for finding lots of bugs!
:li.Special thanks to :hp1.Alberto Gabrielli:ehp1., not only for the
Italian translation of the program and the online help but also for finding
and notifying me of many, many bugs and inconsistencies!
:eul.
:li.Thanks also go to all the users who notified me of bugs, made suggestions
or just wrote me a mail about &progname.!
:eul.

.*-------------------------------------------------------------------------
.*fold00.*Registering
:h1 id=register."Registering"
.*:p. if you are satisfied with what &progname. 1.67 offers, you are free to keep
.*using this version ... but please keep in mind that it lacks many useful
.*functions that are present in newer versions and that it is not supported
.*any longer!
:p.You can become a registered user for &progname. (&version.) just by :link
refid=author reftype=hd.sending an e-mail (or postcard or whatever) to
me:elink.. Actually this is required, if you use &progname. (more than once a
year or so ;-). Just write something like "Hi, I use your program &progname.!"
and I'm satisfied. If you do :hp1.not:ehp1. want to be included in the mailing
list for news and infos about &progname. do not forget to tell me!

:p.But I guess there are a lot of people out there who have seen &progname.,
worked with it for a while but just don't want to register by writing me a
mail. Well, for you I've assembled this list of ...
:p.:hp2.The Top 10 reasons why not to register &progname.:ehp2.

:ul compact.

:li.In my opinion, &progname. is a pretty bad program. I don't like the color
or font of the windows (and far less I like the idea of being able to change
them!), I don't speak any of the languages it supports and I heard that there
once really was found a bug! Not to mention the crappy support; writing an
e-mail to get help is far to complicated.

:li.I'm totally satisfied with anything that &progname. 1.67 offers. I'll
find my own workarounds for this bugs that might be discovered! I'm never
going to use this drag'n'drop, this auto-tagging capabillities or this
database stuff! And ID3 v2.x is far beyond my needs anyway. So spare me by
your updates ...

:li.Who cares for info on new releases? Why should I get on yet another of
these mailing-lists? My mailbox is overflowing on a regular base and I'm
daily checking the "incoming" directory of Hobbes anyway!

:li.I just can't spare the time to write a mail to you! See, I've got a job,
a wife, 10 kids or so, a girlfriend, a car, a house, a swimming pool and
thousands of MP3 files that still need to be tagged, so I'm really busy night
and day! I really don't want to think of what I would miss in this lost five
minutes ...

.*:li.$10 is far too much money for this program! For this big amount I could,
.*well, buy half of an audio CD! I could go out to dinner with my friend (well,
.*at least if we have already eaten before). I could think of thousand things
.*more ...

:li.Why should I make you feel that it's a good thing to develop software for
OS/2? There are far to many programs for OS/2 already, we don't want to get
the market oversupplied, do we?

:li.There are lot's of other programs out there, that do the thing! Well ok,
maybe they don't have that nice PM interface, might be that they are lacking
a lot of the functionallity that &progname. offers and maybe actually there
are only one or two of them, but at least I don't have to spend hours and
hours writing longish mails to their authors!

:li.I don't find supporting the mailware concept of any use. Developers
giving away fully working programs and then hoping that someone actually will
write a mail when using them, when (s)he can get away without, are an all too
trustfull bunch of fools!

:li.Why should I try to support OS/2 software? OS/2 is dead, believe me!
"I'm Bill Gates of MicroBorg. This OS will be assimilated. Development is
futile."

:li.I've done a translation to another language and already sent a mail
together with the translated files &colon.-) 

:li.I can't write! I don't know how to send e-mail!! I don't even have an
account!!! And I'm using Windows!!!!

:eul.



.*-------------------------------------------------------------------------
.*fold00.*Dedication

.* I think we should keep "Hackers" and "The Plague" untranslated.

:h1 id=dedication.Dedikasjon
:p.&progname. er dedikert til :hp1."Hackers":ehp1., sannsynligvis den
verste filmen om datamaskiner, IT og hacking som noen gang er laget. En
utmerket komedie, kan en si, jeg nesten lo meg ihjel halve tida (vel,
dvs. den tida jeg ikke grÜt).

:p.BTW, Jeg vedder pÜ at "da Vinci" ville ha stoppet hvilket som helst
system bare i trang for ressurser ...
:p.BTW 2&colon. Kanskje de burde ha kalt :hp1.filmen:ehp1. "The Plague"?

:p.Nei, selvsagt var dette ikke en virkelig dedikasjon ...

:p.:artwork name='src/data/godzilla.bmp' align=center.
:hp2.
.ce Denne utgaven av Minta er dedikert til Godzilla.
:ehp2.

.*-------------------------------------------------------------------------
.*fold00.*There's more where that came from ...

:h1 id=moreprogs.There's more where that came from ...
:p.&progname. is by no means the only program for OS/2 that I have written.
Here is a little list of more :hp1.freely available:ehp1. programs out of
my editor&colon.

:dl break=all tsize=5.

:dt.:hp2.Gotcha!:ehp2. (Screencapture program)
:dd.Capture windows, window interiors, (parts of) the screen. Timer
controlled, automatic, repeated capturing. Saving to file or clipboard,
etc.

:dt.:hp2.Wanda:ehp2. ("Sticky notes" for the desktop)
:dd.Notes windows in all colors, sizes, etc. Large number of configuration
options. Printing, saving, etc.

:dt.:hp2.Carrie R. Lust:ehp2. (Phone costs/online time tracking)
:dd.11 available values (configurable). 4 warning modes (configurable).
Logging of all connections, etc.

:dt.:hp2.Xened:ehp2. ("Xenon II" editor)
:dd.Editing of weapon prices, editing of the maps, tips and tricks, etc.
Available also for DOS and Linux.

:dt.:hp2.CAD/Off:ehp2. ("Reboot disabler")
:dd.Deactivates the CTRL-ALT-DEL keycombination until system shutdown.

:dt.:hp2.Tomo:ehp2. (Tetris clone)
:dd.More "stones", configurable playground size, etc. Unfortunatly only for
DOS and only in german (I've lost the sources ...)

:edl.
:p.Apart from the programs listed here, there are others in developement
right now (even some games!). If you would like to get more information
just take a look at &www./projects.html !

.*-------------------------------------------------------------------------

:euserdoc.
