#!/bin/ksh
echo  $(date) "- inicio  valida datos   "
export TMPCUENTA=tmptabcuen
export TMPCICFAC=tmptabcicfact
export TMPVENFAC=tmptabvenfact
export TMPDISTRI=tabdistrit
export TMPTIPFAC=tabtipfact
export TMPTIPMPR=tabtipimpr
export TMPCODERRO=taberrocuen
export SALIDA=errotabcuenta
#
#    cobol valida consistencia datos
#
 $exe_alianza/facpvalcuenta.exe
#
export TMPCUENTA=tmpcuentacli
export TMPCLIENTE=tmpcliente
export TMPPROCONT=tmpprocont
export SERTAB=errotabclient
export TMPTIPCLIE=tmptipclie
#
#    cobol valida consistencia tablas
#
  $exe_alianza/facpvaltabla.exe
#
echo $(date) "- fin  valida datos   "
