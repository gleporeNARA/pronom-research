#!/bin/ksh
#echo "|"$1"|"$2"|"$3"|"$4"|"$5"|" >param.log
#cat param.log
#echo " ERROR   = "$1
#echo " ARCHIVO = "$2
#echo " PATH    = "$3
#echo " FECHA   = "$4
#echo " SWITCH  = "$5
#echo " GLOSA   = "$6
rsh -ltasacion TBH-4 /us3/tasacion/tascom/tol_cerror_resumen.sh $1 $2 $3 $4 $5 $6 >$TMPTAS/tolcerror$1$4.log
#-------------------------------------------
# Valida tipo de Archivo y ejecuta Rcp
#-------------------------------------------
if [ $2 = "IRRECUP" ]
then
   rcp tasacion@TBH-4:/us11/tasacion/tastxt/RIRRECUP.$1$4 $TMPTAS
fi;
if [ $2 = "PENDIEN" ]
then
   rcp tasacion@TBH-4:/us11/tasacion/tastxt/RPENDIEN.$1$4 $TMPTAS
fi;
exit
