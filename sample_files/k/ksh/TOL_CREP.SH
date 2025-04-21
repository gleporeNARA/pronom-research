#!/bin/ksh
set -o xtrace
echo "Consulta Relatorios Tarifação "
echo " Cod Relatorio= "$1
echo " Tipo Arquivo = "$2
echo " Fecha Desde  = "$3
echo " Fecha Hasta  = "$4
echo " Usuario      = "$5
echo " Central      = "$6
rsh -ltasacion TBH-4 /us3/tasacion/tascom/consultas/tol_crepor.sh $1 $2 $3 $4 $5 $6 > "/gral_alianza/log/tas/tasrepor"$1$2$3$4$5".log"
exit
