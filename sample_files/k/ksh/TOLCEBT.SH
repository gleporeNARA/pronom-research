#!/bin/ksh
#echo "|"$1"|"$2"|"$3" >param.log
#cat param.log
#echo " LINEA   = "$1
#echo " ARCHIVO = "$2
#echo " FECHA   = "$3
rsh TBH-4  /us3/tasacion/tascom/tol_cebt.sh $1 $2 $3  >$TMPTAS/tolcebt$1$3.log
#-------------------------------------------
# Valida tipo de Archivo y ejecuta Rcp
#-------------------------------------------
if [ $2 = "ANTES" ]
then
   rcp TBH-4:/us11/tasacion/tastxt/ANTES.$1$3 $TMPTAS
fi;
if [ $2 = "DEPOIS" ]
then
   rcp TBH-4:/us11/tasacion/tastxt/DEPOIS.$1$3 $TMPTAS
fi;
exit
