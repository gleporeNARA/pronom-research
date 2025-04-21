#! /bin/sh
flsearch.pl -v -e "a|d" -c -r -v -m3 -x ".tgz" "tar zxvf" -x ".zip" "unzip
-Lo" -s t6-dir