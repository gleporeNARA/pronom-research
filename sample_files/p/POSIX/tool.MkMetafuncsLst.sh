#!/bin/sh
grep -ni "strcmp(" executil.c|grep "mname->data"|grep ",\""|tr ',)(' '\n\n\n'|grep "\""|xargs printf "%s\n"|sort -u
