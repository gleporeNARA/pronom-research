#! /usr/bin/wish



# Flaristo: pattern search and report guide.
# This module implements the graphical shell for the search module.
# Copyright (C) 2001 Leandro Bernsmüller
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA



# Interface state variables:
# list with line lengths in expression definition grid (unit: cell)
global iface_line_len
# grid buttons ID
global iface_butts_id
# interface controls contents
global iface_c_compressed
global iface_c_translate
global iface_c_case
global iface_c_subdirs
global iface_c_avoid
global iface_e_start_fs_entry
global iface_r_where



#################################################
# INTERFACE CONSTRUCTION AND CONTROL PROCEDURES



# Add one cell to search expresion grid.
# Update buttons position.
# lin - grid line index; start indexing in 0 - corresponding to first
#       (top) line; if -1 creates a new line at grid end.
#
# The new cell will be placed at line end (if the given line
# index exists, else, at grid end).
#
# Global Vars:
# iface_line_len - update with new cell position;
# iface_butts_id - read button ID and can update,
#                  if need create a new line.
proc iface_create_cell {lin} {

    global iface_line_len
    global iface_butts_id

    # if grid is empty
    if {[llength $iface_line_len] == 0} {
	
	# creates "ADD LINE" button
	button .grid.cells.b_new_line -text "ou . . ." -command "ih_create_cell -1"
	set id [.grid.cells create window 6 6 -width 200 -height 25 -anchor nw -window .grid.cells.b_new_line]
	lappend iface_butts_id $id
    }

    # how many cells has the line
    set line_len [lindex $iface_line_len $lin]

    # verify if line exists
    if { $line_len != "" } {     # yes

	# new cell index
	set col $line_len

	# moves "ADD CELL" button
	set id [lindex $iface_butts_id $lin]
	.grid.cells move $id 206 0

    } else { # don't exists

	# define line and column where place the new cell
	set col 0
	set lin [llength $iface_line_len]

	# append new line length entry at list end
	lappend iface_line_len 0

	# moves "ADD LINE" button down
	set id [lindex $iface_butts_id end]
	.grid.cells move $id 0 31

	# creates "ADD CELL" button at line end
	set nome .grid.cells.b$lin
	button $nome -text "e também . . ." -command "ih_create_cell $lin"
	set id [.grid.cells create window 212 [expr 6 + 31 * $lin] \
		                          -width 200 -height 25 \
                                          -anchor nw -window $nome]

	# adds button id to list
	# copy last list element ("ADD LINE" button id)
	lappend iface_butts_id [lindex $iface_butts_id end]
	# update the "pre-"last element
	set iface_butts_id [lreplace $iface_butts_id $lin $lin $id ]	
    }
	
    # defines information about the new cell entry control
    set name_ctl .grid.cells.e$col$lin
    set pos_x [expr 6 + 206 * $col]
    set pos_y [expr 6 + 31  * $lin]

    # creates control for text editing, focus it
    entry $name_ctl
    .grid.cells create window $pos_x $pos_y -width 200 -height 25 -anchor nw -window $name_ctl

    # focus entry
    focus $name_ctl

    # updates line lengths list
    set iface_line_len [lreplace $iface_line_len $lin $lin [expr $col + 1] ]
}



# Creates the main window and it's basic controls.
proc iface_create_window {} {

    global iface_c_compressed
    global iface_c_translate
    global iface_c_case
    global iface_c_subdirs
    global iface_c_avoid
    global iface_e_start_fs_entry
    global iface_r_where

  # if window don't exists
  if { ! [winfo exists .] } {
      # create it
      toplevel .
  }

  # defines basic window aspects
  # size
  wm geometry . 600x470
  wm minsize . 490 470
  wm resizable . 1 1
  wm title . "Flaristo 0.1a"
  wm iconname . "Flaristo"

  # create menu

  # horizontal menu bar
  menu .main_menu -tearoff 0
  . configure -menu .main_menu  

  # file submenu
  menu .main_menu.file -tearoff 0
  .main_menu add cascade -menu .main_menu.file -label "Arquivo" -underline 0
  .main_menu.file add command -label "Abrir..." -underline 0 -command "puts \"abrir\""
  .main_menu.file add command -label "Novo..." -underline 0 -command "puts \"novo\""
  .main_menu.file add command -label "Salvar..." -underline 0 -command "puts \"salvar\""
  .main_menu.file add separator
  .main_menu.file add command -label "Sair..." -underline 3 -command "ih_end_app"

  # search submenu
  menu .main_menu.search -tearoff 0
  .main_menu add cascade -menu .main_menu.search -label "Pesquisa" -underline 0
  .main_menu.search add command -label "Executar..." -underline 0 -command "ih_search"
  .main_menu.search add separator
  .main_menu.search add command -label "Resultados..." -underline 0 -command "puts \"resultado\""

  # config submenu
  menu .main_menu.config -tearoff 0
  .main_menu add cascade -menu .main_menu.config -label "Configurar" -underline 0
  .main_menu.config add command -label "Resultado..." -underline 0 -command "puts \"resultado\""
  .main_menu.config add command -label "Evitar Arquivos..." -underline 0 -command "puts \"evitar arquivos\""
  .main_menu.config add command -label "Programas Auxiliares..." -underline 0 -command "puts \"progs auxiliares\""
  .main_menu.config add command -label "Diretório Temporário..." -underline 0 -command "puts \"dir temp\""

  # makes one empty top margin
  frame .top_margin
  pack .top_margin -side top -fill x -pady 5

  # creates the entry control (to type some expression in cell)

  # define controls: canvas (cells area for display), horizontal scroll bar,
  # and vertical scroll bar
  frame .grid
  scrollbar .scroll_h -command ".grid.cells xview" -orient horiz
  scrollbar .scroll_v -command ".grid.cells yview"
  canvas .grid.cells -relief flat -background grey65 \
                     -scrollregion {0 0 2066 657} \
                     -xscrollcommand ".scroll_h set" \
                     -yscrollcommand ".scroll_v set"

  # defines controls place
  # place on top
  pack .grid -side top -fill both -expand yes
  # position cells area on grid top
  pack .grid.cells -side top -fill both

  # defines 3 divisions in grid and places one control in each division
  grid rowconfig    .grid 0 -weight 1
  grid columnconfig .grid 0 -weight 1
  grid .grid.cells -in .grid -row 0 -column 0 -padx 4 -pady 4 -sticky nesw
  grid .scroll_h -in .grid -row 1 -column 0 -padx 4 -sticky ew
  grid .scroll_v -in .grid -row 0 -column 1 -pady 4 -sticky ns

  # creates middle margin

  frame .middle_margin
  pack .middle_margin -side top -fill x -ipady 5

  # creates bottom controls

  frame .check_bar 
    # -background yellow
  frame .separator_bar 
    # -background black
  frame .right_bar
    # -background white
  pack .check_bar .separator_bar .right_bar -side left -ipady 10 -padx 10

  checkbutton .check_bar.w0 -text "traduzir acentos do HTML" -variable iface_c_translate -relief flat
  checkbutton .check_bar.w1 -text "diferenciar maiúsculas de minúsculas" -variable iface_c_case -relief flat
  checkbutton .check_bar.w2 -text "procurar dentro de subdiretórios" -variable iface_c_subdirs -relief flat
  checkbutton .check_bar.w3 -text "descomprimir arquivos comprimidos" -variable iface_c_compressed -relief flat
  checkbutton .check_bar.w4 -text "evitar os arquivos pré-definidos" -variable iface_c_avoid -relief flat
  pack .check_bar.w0 .check_bar.w2 .check_bar.w3 .check_bar.w4 \
       -side top -anchor w

  label .right_bar.w0 -text "Pesquisar em:"
  entry .right_bar.w1 -width 40 -textvariable iface_e_start_fs_entry
  button .right_bar.w2 -text "Escolher..." -command "ih_select_file"
  label .right_bar.w3 -text "Comparar com:"
  radiobutton .right_bar.w4 -text "nome dos arquivos" -relief flat \
                            -variable iface_r_where -value 1
  radiobutton .right_bar.w5 -text "conteúdo dos arquivos" -relief flat \
                            -variable iface_r_where -value 2
  radiobutton .right_bar.w6 -text "nome e conteúdo dos arquivos" -relief flat \
                            -variable iface_r_where -value 3

  pack .right_bar.w0 -side top -anchor nw -pady 2
  pack .right_bar.w1 -side top -anchor nw -pady 2 -ipady 2
  pack .right_bar.w2 -side top -anchor e -pady 2
  pack .right_bar.w3 .right_bar.w4 .right_bar.w5 .right_bar.w6 \
	-side top -anchor nw -pady 0
}



# Set initial values for user inferface variables.
#
# Global Vars:
# iface_line_len
# iface_butts_id
# iface_c_compressed
# iface_c_translate
# iface_c_case
# iface_c_subdirs
# iface_c_names
# iface_c_inside
# iface_c_avoid
# iface_e_start_fs_entry
# iface_r_where
proc iface_init_vars {} {

  global iface_line_len
  global iface_butts_id
  global iface_c_compressed
  global iface_c_translate
  global iface_c_case
  global iface_c_subdirs
  global iface_c_names
  global iface_c_inside
  global iface_c_avoid
  global iface_e_start_fs_entry
  global iface_r_where

  # empty lists
  set iface_line_len {}
  set iface_butts_id {}

  # set default control values
  set iface_c_compressed 1
  set iface_c_translate 1
  set iface_c_case 0
  set iface_c_subdirs 1
  set iface_c_names 0
  set iface_c_inside 1
  set iface_c_avoid 1
  set iface_e_start_fs_entry [pwd]
  set iface_r_where 2
}



# Start user inferface.
proc iface_build {} {

  iface_create_window

  # creates the first grid cell
  iface_create_cell 0
}



#################################################
# INTERFACE HANDLER PROCEDURES



# Confirm user request to end application, and
# terminate it, if is the case.
proc ih_end_app {} {
    destroy .
}



# Prepare to make search
# (before start, confirm parameters)
proc ih_search {} {
    app_make_search
}



# Handle cell creation.
proc ih_create_cell {lin} {
    iface_create_cell $lin
}


# File selection dialog box.
# Global Vars:
# iface_e_start_fs_entry - read and, probably, update
proc ih_select_file {} {

  global iface_e_start_fs_entry

  set file_types { {"Arquivos de pesquisa" {.flz} }
                   {"Todos"  {*}}}

  # get the new file name
  set file_name [tk_getOpenFile -filetypes $file_types \
                                -defaultextension ".flz" \
		                -initialdir $iface_e_start_fs_entry \
		                -parent .]

  # if file was selected
  if { $file_name != "" } {
      set iface_e_start_fs_entry $file_name
  }
}
   


#################################################
# APPLICATION SPECIFIC PROCEDURES



# Does search acording expression defined in grid.
# Build the correspondent regular expression from grid contents.
# The reugular expression is based on Perl sintax.
#
# Global Vars:
# iface_line_len - read grid lines lengths
proc app_make_search {} {

    global iface_line_len

    # receive the regular expression
    set expression ""

    # for each line in grid
    for {set lin 0} {$lin < [llength $iface_line_len]} {incr lin} {

	# line length
	set len [lindex $iface_line_len $lin]

	# if is the first line, don't add operator
	if {$lin != 0} {
	    set expression [join [list $expression "|"] ""]
	}

	# for each line cell
	for {set col 0} {$col < $len} {incr col} {

	    # get cell contents
	    set cell_name .grid.cells.e$col$lin
	    set contents [$cell_name get]

	    # concatenate, if cell is not empty
	    if { $contents != "" } {

		# if is the first cell, skip operator
		if {$col != 0} {
		    set expression [join [list $expression ".*"] ""]
		}

		set expression [join [list $expression $contents] ""]
	    }
	}
    }

    puts $expression
}



iface_init_vars
iface_build
