#!/bin/ksh
export II_DATE_FORMAT=GERMAN
export II_PATTERN_MATCH=%
echo $(date)
echo "PARAM 1 = "$1
echo "PARAM 2 = "$2
echo "PARAM 3 = "$3
echo "PARAM 4 = "$4
# ==========================================================================
# DEFINICIONES BASICAS PARA LOGRAR CONECTAR Y RECONOCER EL AMBIENTE DE COBOL
# ==========================================================================
#set -o xtrace
export II_DATE_FORMAT=GERMAN
export II_PATTERN_MATCH=%
II_SYSTEM=/us0
export II_SYSTEM
PATH=$HOME/bin:$II_SYSTEM/ingres/bin:$II_SYSTEM/ingres/utility:${PATH:-/usr/bin:
.}
LD_LIBRARY_PATH=$II_SYSTEM/ingres/lib:$LD_LIBRARY_PATH:/usr/shlib
LD_LIBRARY_PATH=/us7/syncsort/syncsort/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH
export COBDIR=/lib/cmplrs/cob
TERM_INGRES=vt220ak
TERM_INGRES=vt220
export TERM_INGRES
stty -tabs dec
tset -I -Q
export PATH TERM_INGRES
LD_LIBRARY_PATH=$COBDIR/coblib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH
MCACOB=/lib/cobol/bin/cob
export MCACOB
#export BASEDATOS='TBH-2::alianza'
#set -o xtrace
cls
echo "---------------------------------------------------------"
echo "       * * *   ENTRO A TOL_CLLANOF.SH DE USERTAS"
echo "---------------------------------------------------------"
TAS_MAE="/gral_alianza/tmp/tas/tasmae"
export TAS_MAE
echo "TAS_MAE="$TAS_MAE
DEFBASE=$TAS_MAE/tasbase/base.txt
export DEFBASE
echo "DEFBASE="$DEFBASE
TABLLAMA=$TAS_MAE/TABLLAMA_$2
export TABLLAMA
echo "TABLLAMA = "$TABLLAMA
TIPO_PLAN=$1
export TIPO_PLAN
TIPO_LLAM=$4
export TIPO_LLAM
CICLO=$2
export CICLO
echo "TIPO PLAN ="$TIPO_PLAN
echo "CICLO     ="$CICLO
echo "TIPO LLAM ="$TIPO_LLAM
PARAM="$3"
export PARAM
echo "PARAM     ="$PARAM
echo $1 $2 $PARAM >paramtxt
TAS_EXE=/gral_alianza/exe
export TAS_EXE
echo "TAS_EXE="$TAS_EXE
TAS_LOG=$TAS_MAE/taslog
export TAS_LOG
echo "TAS_LOG="$TAS_LOG
TAS_COM=/gral_alianza/pro
export TAS_COM
echo "TAS_COM = "$TAS_COM
echo "---------------------------------------------"
echo " Parametros recibidos "
echo "---------------------------------------------"
echo "TIPO PLAN = "$TIPO_PLAN
echo "CICLO     = "$CICLO
echo "PARAM     = "$PARAM
echo "TIPO LLAM = "$TIPO_LLAM
if [ $TIPO_LLAM = "0" ]
then
        echo "LLAMADAS NORMALES"
        echo "---------------------------------------------"
        echo " Ejecucion sobre Tabllamas Mensuales     "
        echo "---------------------------------------------"
        if [ $TIPO_PLAN = "R" ]
        then
            echo "Plan es Rentaphone del Ciclo"
            TABLLAMA=$TAS_MAE/TABLLAMA_ALQ
            export TABLLAMA
            echo "TABLLAMA="$TABLLAMA
        else
            echo "Plan es Normal del Ciclo"
            TABLLAMA=$TAS_MAE/TABLLAMA_$CICLO
            export TABLLAMA
            echo "TABLLAMA="$TABLLAMA
        fi
        echo "comando = " $TAS_EXE/tolcllanof" "$PARAM
        $TAS_EXE/tolcllanof $PARAM
        echo "---------------------------------------------"
        echo " Ejecucion sobre Tabllamas Diarias        "
        echo "---------------------------------------------"
        if [ $TIPO_PLAN = "R" ]
        then
           echo "Plan es Rentaphone Llamadas Diarias"
           TABLLAMA=$TAS_MAE/TABLLAMA_DIA_ALQ
           export TABLLAMA
           echo "TABLLAMA="$TABLLAMA
        else
           echo "Plan es Normal Llamadas Diarias"
           TABLLAMA=$TAS_MAE/TABLLAMA_DIA_$CICLO
           export TABLLAMA
           echo "TABLLAMA="$TABLLAMA
        fi
        echo "comando = " $TAS_EXE/tolcllanof" "$PARAM
        $TAS_EXE/tolcllanof $PARAM
        echo "---------------------------------------------"
        echo " Final del Script de $TAS_COM/tol_cllanof.sh "
        echo "---------------------------------------------"
else
#*****  Angelica  *********************************************
# Llamadas Historicas
#*******************************************************************
        echo "LLAMADAS HISTORICAS"
        if [ $TIPO_PLAN = "R" ]
        then
            echo "Plan es Rentaphone"
            TABLLAMA=$TAS_MAE/tablla15/TABLLAMA_ALQ
            export TABLLAMA
            echo "TABLLAMA="$TABLLAMA
        else
            echo "Plan es Normal    "
            TABLLAMA=$TAS_MAE/tablla$CICLO/TABLLAMA_$CICLO
            export TABLLAMA
            echo "TABLLAMA="$TABLLAMA
        fi
        echo "comando = " $TAS_EXE/tolcllanof" "$PARAM
        $TAS_EXE/tolcllanof $PARAM
        echo "---------------------------------------------"
        echo " Ejecucion sobre Tabllamas Diarias        "
        echo "---------------------------------------------"
        if [ $TIPO_PLAN = "R" ]
        then
           echo "Plan es Rentaphone"
           TABLLAMA=$TAS_MAE/tablla15/TABLLAMA_DIA_ALQ
           export TABLLAMA
           echo "TABLLAMA="$TABLLAMA
        else
           echo "Plan es Normal    "
           TABLLAMA=$TAS_MAE/tablla$CICLO/TABLLAMA_DIA_$CICLO
           export TABLLAMA
           echo "TABLLAMA="$TABLLAMA
        fi
        echo "comando = " $TAS_EXE/tolcllanof" "$PARAM
        $TAS_EXE/tolcllanof $PARAM
        echo "---------------------------------------------"
        echo " Final del Script de $TAS_COM/tol_cllanof.sh "
        echo "---------------------------------------------"
fi
exit

