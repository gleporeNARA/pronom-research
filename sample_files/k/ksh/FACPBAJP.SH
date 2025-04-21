#!/bin/ksh
# Nombre:   facpbajpartra.sh   
#
# Descripcion: Proceso que genera archivos de parametros calculo impuesto trafico
#
# Parametros:    <fecha facturacion>  (DDMMAAAA) (ej. 20121999)
#
echo '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'
fec_fact=$1
ciclo=$(echo $fec_fact |awk '{print substr($0,1,2)}')
# Direcciones de facturacion
FACCAL=/us5/trafico/$fec_fact
FACPRO=/gral_alianza/pro
##BASEDATOS='tbh-2::alianza/batch'
BASEDATOS='alifac'
export USER=$USERING
echo $USER
cd $FACCAL
#
echo '&&&&&  Baja tablas de impuestos con formato especial &&&&&'
date
sql <$FACPRO/facpbajaimpu.sh alifac -uingres -f8F12.7 -f4F12.7
#
echo $(date)
# bajada de Archivos de Parametros para Calculo de impuesto Trafico
# ================================================================
# define Variables de ambiente
#-------------------------------------------------------
export TABCARPROD=$FACCAL/TABCARPROD
export  TABCUENTA=$FACCAL/TABCUENTA
export TABFACLOCA=$FACCAL/TABFACLOCA
export TABVALCAPR=$FACCAL/TABVALCAPR 
export TABEXIMTIC=$FACCAL/TABEXIMTIC 
#-------------------------------------------------------
# ejecuta bajada de Tabelas 
#-------------------------------------------------------
/gral_alianza/exe/facpbajpartra.exe $ciclo
echo $(date)
#
echo '&&&&&   Genera archivos desordenados    &&&&&'
date
$FACPRO/facpgenrandom.sh $FACCAL/TABCUENTA      $FACCAL/TABCUENTA.txt
$FACPRO/facpgenrandom.sh $FACCAL/TABVALCAPR     $FACCAL/TABVALCAPR.txt
$FACPRO/facpgenrandom.sh $FACCAL/TABFACLOCA     $FACCAL/TABFACLOCA.txt
$FACPRO/facpgenrandom.sh $FACCAL/TABIMPUALI     $FACCAL/TABIMPUALI.txt
$FACPRO/facpgenrandom.sh $FACCAL/TABEXIMTIC     $FACCAL/TABEXIMTIC.txt
$FACPRO/facpgenrandom.sh $FACCAL/TABCARPROD     $FACCAL/TABCARPROD.txt
$FACPRO/facpgenrandom.sh $FACCAL/TABMOVFACT     $FACCAL/TABMOVFACT.txt
date
echo '&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'

