�MKMSGF MKA      _          ��M�v���_{���"C^��#l���:Ul�x
       �                              mkandndl.msg                                                                                                                                                                                                                                                         IWPAMPTR_MESSAGEFILE_1.01 NDL JN 2
ITitle Program Halt ErrTag ErrTimeframe1 ErrTimeframe2 ErrParm ErrSource ErrObj CreateDef CreateDll CreateRes WriteRes ReadScript ErrFile ErrFormatUnknown
IErrStaticPtr1 ErrStaticPtr2 ErrKeyword ErrPtrNotFound ErrNotNum ErrTimeframe3 ReadDir GeneratedBy WriteRc NoPtrs Help1 Help2 Help3
I
Geanimeerde Aanwijzers voor OS/2 - Versie 1.01
door Christian Langanke 1996,1997 - Alle rechten voorbehouden
National Language Support door Luc Van Bogaert

Imakeand - AniMouse resource-DLL aanmaakprogramma

IOnderbroken door gebruiker.
I%1: fout:
IDe parameter /TIMEFRAME:nnn moet een numerieke waarde hebben.
IDe waarde van de parameter /TIMEFRAME:nnn
moet tussen %1 en %2 liggen.
IOngeldige parameter �%1�.
Iscriptbestand of directory �%1� niet gevonden.
I
vereist bestand 
�%1� 
niet gevonden.
Iaanmaken definitiebestand
Iaanmaken DLL-bestand
Iaanmaken bronbestand
Ischrijven bronbestand naar DLL
Ilezen scriptbestand �%1�
Iongeldig scriptbestand �%1�.
�Animation_Script� ontbreekt op de eerste lijn.
I%1(%2)%3 Ongeldig formaat genegeerd.
I%1(%2)%3 De statische aanwijzer is niet de eerste aanwijzer in de animatie.
I%1(%2)%3 Meer dan ��n statische aanwijzer gedefinieerd in de animatie.
I%1(%2)%3 Ongeldig sleutelwoord �%4�.
I%1(%2)%3 Bestand �%4� niet gevonden.
I%1(%2)%3 waarde tijdsinterval niet numeriek.
I%1(%2)%3 tijdsinterval moet tussen %4 en %5 liggen.
Ilezen brondirectory �%1�
Iaangemaakt op %1 %2 door
Ischrijven rc-bestand
IGeen aanwijzers gevonden/gedefinieerd in �%1�
I  Syntax: MAKEAND scriptbestand|directory [/?] [/TIMEFRAME:nnn]

  De aanwijzerbestanden en de tijdsintervallen die in de animatie gebruikt
  moeten worden, kunnen in een AniMouse-scriptbestand gedefinieerd worden.
I
  Anderzijds kan men een directory opgeven, die de aanwijzerbestanden
  voor de animatie bevat. MAKEAND maakt dan een AniMouse-scriptbestand aan,
  dat gebruikt kan worden om de individuele tijdsintervallen te defini�ren.
  Op een HPFS-station mag de naam van deze directory meer dan 8 karakters
  bevatten, maar wegens een beperking van de OS/2 resource-compiler
  mogen er geen spaties in voorkomen.
I
  Raadpleeg ook "Geanimeerde Aanwijzers voor OS/2" in de map "Informatie",
     deel "Hoe kan ik een AniMouse resource-DLL aanmaken ?"
