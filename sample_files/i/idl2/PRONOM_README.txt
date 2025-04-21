Welcome to the Cassini/RPWS/HFR-Kronos server at LESIA (Laboratoire d'Etudes Spatiales et d'Instrumentation en Astrophysique).

This server provides the Cassini/RPWS/HFR data processed by the Cassini/RPWS group at LESIA. Several data series are archived and made available on this server :
Level 0 data files (also referred to as K files): raw telemetry data containing only Cassini/RPWS/HFR data packets.
Level 1 data files: Cassini/RPWS/HFR data in telemetry units.

https://lesia.obspm.fr/kronos/guest.php

PAQUETS_HFR
PAQUETS_HFR, fichierK, HFR, HFRdata [, lun=sometype]

lecture des paquets HFR d'un fichier Kronos (~NewBench) octets 0:4 = StPk1, 5:8 = time, 9:12 = date, 13:14 = nombre de bytes jusqu'a la fin du paquet = entete(18 bytes)+data+EOF

https://lesia.obspm.fr/kronos/routines/paquets_hfr.html
