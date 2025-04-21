#!/bin/ksh
# Nombre:   facpgenimpu_tfi.sh
#
# Descripcion:  Define los nombres logicos de las variables a ser
#               utilizadas por los archivos a procesar, para el
#               cargo de impuestos.
#
# Parametros:    <fecha facturacion>  (DDMMAAAA) (ej. 20121999)
#
fec_fact=$1
ciclo=$(echo $fec_fact |awk '{print substr($0,1,2)}')
FACCAL=/us5/trafico/$fec_fact
#
echo '&&&&&    Ejecuta calculo de impuestos TFI      &&&&&'
date
export TABCUENTA=$FACCAL/TABCUENTA.txt
export TABVALCAPR=$FACCAL/TABVALCAPR.txt
export TABFACLOCA=$FACCAL/TABFACLOCA.txt
export TABIMPUALI=$FACCAL/TABIMPUALI.txt
export TABDETIMPU=$FACCAL/TABDETIMPU.txt
export TABEXIMTIC=$FACCAL/TABEXIMTIC.txt
export TABCARPROD=$FACCAL/TABCARPROD.txt
export TABMOVFACT=$FACCAL/TABMOVFACT.txt
export FACCARAGRU=$FACCAL/FACCARAGRU.txt
#
export TABLLAMAIN=$FACCAL/TABLLAMA_$fec_fact'_TFI'
# Salidas
export TRAFICOACUFACT=$FACCAL/TRAFICO_FACTU_$fec_fact'_TFI'
export PENDFACTU=$FACCAL/PENDFAC_$fec_fact'_TFI'
export ARCSTAT=$FACCAL/ESTADERR_$fec_fact'_TFI'
#
/gral_alianza/exe/facpcalcimputra.exe
#
# Concatena archivo de Trafico
cat $TRAFICOACUFACT  >>  $FACCAL/TRAFICO_FACTU_$ciclo
cat $ARCSTAT         >>  $FACCAL/ESTADERR_$fec_fact
cat $PENDFACTU       >>  $FACCAL/TABLLAMA_PENDIENTE_$fec_fact

date
echo '&&&&&   Fin calculo de impuestos TFI     &&&&&'
