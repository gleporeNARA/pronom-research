#!/bin/ksh

if [ "$1" = DT_RECUP ]
then
 echo "\n* * * Recuperando datas válidas. Aguarde... * * *\n"
else
 echo " Data de recuperação = "$1
 echo " Usuário             = "$2
fi
rsh -ltasacion TBH-4 /us3/tasacion/tascom/consultas/tol_crecup.sh $1 $2 > /gral_alianza/log/tas/tol_crecup.$1$2.log
