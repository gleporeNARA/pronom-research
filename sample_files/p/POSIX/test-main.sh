#!/bin/sh

rm -rf merge.nus
mkdir -p merge.nus/nusdas_def

cp NUSDAS10/nusdas_def/test.def merge.nus/nusdas_def

ruby ${RUBYOPT} -I../libexec main.rb -o merge.nus NUSDAS01 NUSDAS02 \
	NUSDAS03 NUSDAS04 NUSDAS05 NUSDAS06 NUSDAS07 NUSDAS08 NUSDAS09 \
	NUSDAS10 NUSDAS11 NUSDAS12
exit $?
