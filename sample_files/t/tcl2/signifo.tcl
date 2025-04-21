#!/usr/bin/wish

# Signifo graphic interface
# This file is part of Signifo Project, see documentation for details

# how to execute
# (Linux:)
#   wish signifo.tcl
#   or
#   signifo.tcl
#
# (GNU-WIN32:)
#   cygwish80 signifo.tcl

# Does not open this file in VTCL !!!



# variables (must update Init_system, in int-init.tcl)
global \
  Dictionary_file \
  Query_word \
  Language_file \
  Interf_title \
  Interf_execute_query \
  Interf_exit \
  Interf_word \
  Interf_help \
  Interf_dictionary_label \
  Interf_files_type_1 \
  Interf_files_type_all \
  Interf_change \
  Interf_help_title \
  Interf_help_1 \
  Interf_help_2 \
  Interf_help_3 \
  Interf_help_4 \
  Interf_equivalence \
  Interf_equivalence_explain \
  Interf_close_help \
  Interf_find_error_1 \
  Interf_find_error_2 \
  Interf_find_error_3 \
  Interf_find_error_4 \
  Interf_find_error_5 \
  Interf_help_text_1 \
  Interf_help_text_2 \
  Interf_help_text_3 \
  Interf_help_text_4
  
  
  
# init data
set Dictionary_file "esp-port.txt"
set Language_file "esperanto.tcl"


# load files to init system
source windmang.tcl
source int-init.tcl

# chose language
Process_window show .
Process_window show .top17
