#!/bin/ksh
# Nombre : facpclibloq.sh
#
# Descipcion:  Obtiene el trafico sin franquia a partir de los archivos
#              historicos de facturacion (HISDETLLAM y HISDETLOCA) para 
#              los clientes que se pasan como parametro (Son clientes 
#              bloqueados).
# 
# Parametro : Fecha archivo historico <DDMMAAAA> [DDMMAAAA] ...
#             (Se realiza el proceso para cada archivo historico referente
#              a la fecha que se pasa como parametro)
#              Lee archivo de clientes como parametro.
#
# Ejecuta programa : facpclibloq.exe
#                    facrclibloq.awk
# Indicaciones:
#               Se debe bajar primero el archivo de parametros desde
#               alianza por medio del proceso forclibloq.sql ubicado en 
#               /home1/operfac/fuentes - maquina de facturacion. Este es
#               un archivo por cada fecha de facturacion. Este archivo se
#               sortear con -u para eliminar los duplicados y ordenar por
#               monto (k1.32,1.46) para que quede desordenado por la llave 
#               que es la cuenta. (para mantener un arbol binario balanceado)
# Ejemplo: 
#  sort -u tmpclibloq_05091999 -o tmpclibloq_05091999.txt_sort
#  sort -k1.32,1.46 tmpclibloq_05091999.txt_sort -o tmpclibloq_05091999.sort
#
# Antes de bajar la tabla asegurarse que tiene owner revision (cobbloq30dias)
#
#cd /data1/fac/tmp/procesos
#sql tbh-2::alianza <forclibloq.sql
# Realizar los sort manualmente
date
/gral_alianza/exe/facpclibloq.exe $1 $2 $3 $4 $5 $6 $7 $8 $9
# Obtencion del ultimo parametro pasado
lista=$*
parult=$(echo $lista | awk '{print $NF}')
awk -f /gral_alianza/pro/facrclibloq.awk /data1/fac/tmp/clibloq_$parult.paso > /data1/fac/tmp/procesos/facrclibloq_$parult.lst
date
rm -f /data1/fac/tmp/clibloq_$parult.paso
