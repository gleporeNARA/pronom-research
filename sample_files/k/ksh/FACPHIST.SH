#!/bin/ksh
# Parameros:  $1  - codigos de tabla tmpclicuen
#                   AAAAMMDDHHMMSS
#             $2  - parte de nombre archivo (fec_fact)
#                   DDMMAAAA
#set -x
ENTRADA=$exe_alianza
HISFACT=/us5/historicos
export HISFACTURA1=$HISFACT/HISFACTURA_$2
export HISDETFACT1=$HISFACT/HISDETFACT_$2
export HISDETCONC1=$HISFACT/HISDETCONC_$2
export HISDETLLAM1=$HISFACT/HISDETLLAM_$2
export HISDETLOCA1=$HISFACT/HISDETLOCA_$2
export HISMENSAJES=$HISFACT/HISMENSAJES_$2
$exe_alianza/facpsubehisto.exe $1
