#!/bin/ksh
set -x

export INPUTBARRA=$tmp_fac/faccodbarra.txt
export OUTPUTBARRA=$tmp_fac/FACCODBARRA.TXT
cd $tmp_fac

sql alifac -u$USERING << /
copy factotfac (
num_fact=char(12),
num_cuen=char(09),
mto_base=char(14),
mto_exen=char(14),
mto_afec=char(14),
mto_impu=char(14),
mto_tota=char(14),
mto_icms=char(14),
mto_pase=char(14),
mto_fins=char(14),
cod_agre=char(01),
num_agre=char(09),
cod_barr=char(49),
cod_redu=char(29),
num_lpri=char(10),
mto_fact=char(11),
nl=d1)
into   'faccodbarra.txt'
\p\g
/

$exe_alianza/facnfacobar.exe

sql alifac -u$USERING << /

modify factotfac to truncated
\p\g

copy factotfac (
num_fact=char(12),
num_cuen=char(09),
mto_base=char(14),
mto_exen=char(14),
mto_afec=char(14),
mto_impu=char(14),
mto_tota=char(14),
mto_icms=char(14),
mto_pase=char(14),
mto_fins=char(14),
cod_agre=char(01),
num_agre=char(09),
cod_barr=char(49),
cod_redu=char(29),
num_lpri=char(10),
mto_fact=char(11)nl)
from 'FACCODBARRA.TXT'
\p\g
modify factotfac to btree on num_cuen
\p\g
/
