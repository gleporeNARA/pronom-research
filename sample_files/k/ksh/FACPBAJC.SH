#!/bin/ksh
# Nombre : facpbajclib.sh
#
# Descripcion :
#               Se debe bajar primero el archivo de parametros desde
#               alianza por medio del proceso forclibloq.sql que es
#               generado en forma dinamica debido a que se debe pasar
#               la fecha de facturacion al quuery. Este es
#               un archivo por cada fecha de facturacion. 
# Paranetros:
#                $1  Fecha facturacion (ej. 05101999)
# Generacion de archivo para bajar tabla de parametros
date
cd $tmp_fac
echo 'hola' | awk -f /gral_alianza/pro/facpforclibloq.awk -v fec_fact=$2 > forclibloq.sql
# Ejecucion proceso de bajada de tabla
sql tbh-2::alianza <forclibloq.sql -uingres
date
# Desordenar archivo para arbol balanceado
awk -f /gral_alianza/pro/facpgenrandom.awk tmpclibloq_$2.txt tmpclibloq_$2.sort
#  Copia de archivo de parametros a maquina de produccion
rcp tmpclibloq_$2.sort tbh-1:/data1/fac/tmp/procesos/tmpclibloq_$2.sort
#
# Ejecucion de proceso en la maquina de produccion
rsh tbh-1 -lrevision ...
#
