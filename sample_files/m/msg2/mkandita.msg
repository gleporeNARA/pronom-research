�MKMSGF MKA      _          ��M�}���j���3Xs��N���Wy����r
       �                              mkandita.msg                                                                                                                                                                                                                                                         IWPAMPTR_MESSAGEFILE_1.01 ITA SN 2
ITitle Program Halt ErrTag ErrTimeframe1 ErrTimeframe2 ErrParm ErrSource ErrObj CreateDef CreateDll CreateRes WriteRes ReadScript ErrFile ErrFormatUnknown
IErrStaticPtr1 ErrStaticPtr2 ErrKeyword ErrPtrNotFound ErrNotNum ErrTimeframe3 ReadDir GeneratedBy WriteRc NoPtrs Help1 Help2 Help3
I
Puntatori animati del mouse per OS/2 - Versione 1.01
by Christian Langanke 1996,1997 - Tutti i diritti riservati
National Language Support di Gian Luca Prosperini

Imakeand - File risorse AniMouse (DLL) creation program

IInterrotto dall'utente.
I%1: error:
Iil valore del parametro /TIMEFRAME:nnn deve essere numerico.
Iil valore del parametro /TIMEFRAME:nnn
deve essere compreso tra %1 e %2.
IParametro non valido �%1�.
Ifile-script o directory �%1� non trovata.
I
file richiesto
�%1�
non pu� essere trovato.
Icreazione file di definizione
Icreazione file dll
Icreazione file risorse
Iscrittura file risorse in file dll
Ilettura file-script �%1�
Ifile-script non valido �%1�.
�Animation_Script� deve essere presente nella prima linea.
I%1(%2)%3 formato non valido - ignorato.
I%1(%2)%3 Il puntatore statico non � il primo puntatore all'interno dell'animazione.
I%1(%2)%3 Ci sono pi� di un puntatore statico definito nell'animazione.
I%1(%2)%3 Parola chiave non valida �%4�.
I%1(%2)%3 File �%4� non trovato.
I%1(%2)%3 il valore "timeframe" non � numerico.
I%1(%2)%3 il valore "timeframe" deve essere compreso tra %4 e %5.
Ilettura directory sorgente �%1�
Igenerato il %1 %2 da
Iscrittura del file .rc
INessun puntatore trovato/definito in �%1�
I  Sintassi: MAKEAND scriptfile|directory [/?] [/TIMEFRAME:nnn] [/PACK]

  Il file puntatore del mouse ed i valori "timeframe" che devono essere usati
  per l'animazione possono essere definiti in un file-script AniMouse.
I
  In alternativa, pu� essere specificata una directory contenente i file
  del puntatore del mouse per l'animazione. Poi MAKEAND creer� un file-
  script AniMouse che pu� essere usato per definire anche pi� di un
  valore di "timeframes". Il nome della directory pu� essere pi� lungo
  di 8 caratteri su un disco formattato HPFS, ma a causa di una
  restrizione del compilatore delle risorse (RC) di OS/2 non deve
  contenere spazi.
I
  Fare riferimento anche a "Puntatori animati del mouse per OS/2" nella cartella
     "Informazioni", sezione
      "Come faccio a creare una DLL per AniMouse ?"
