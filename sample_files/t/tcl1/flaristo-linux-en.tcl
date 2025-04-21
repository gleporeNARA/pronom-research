#! /usr/bin/wish



# Flaristo: text search and report tool.
# This module implements the graphical shell for the search module.
# Copyright (C) 2001, 2002 Leandro Bernsmüller
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
global igl_line_len
# grid buttons ID
global igl_butts_id
# interface controls contents
global igl_c_preprocess
global igl_c_translate
global igl_c_case
global igl_c_subdirs
global igl_c_text_only
global igl_e_avoid_files
global igl_e_search_command
global igl_e_temp_dir
global igl_e_preprocess_assocs
global igl_r_where
global igl_data_file
global igl_data_file_path
global igl_data_pathfile
global igl_prog_name
global igl_prog_version
global igl_file_version
global igl_default_file_version
global igl_browser_result
global igl_active_tab
global igl_active_view
global igl_prev_active_view
# application data
global agl_data
global agl_config_fname
global agl_search_res_channel
global agl_search_res_widget
global agl_search_res_win



#################################################
# INTERFACE CONSTRUCTION AND CONTROL PROCEDURES



# Browse file system, returning the choosed entry.
# place - where initialize browser
#
# Place must be an absolute path, or browser with initialize in
# current work directory.
#
# Return: the selected entry (with path).
#
# Global Vars:
# igl_prog_name - read
# igl_browser_result - write the choosed entry, or
#                      its old value, if canceled.
proc iface_win_browse_fs {place} {

    global igl_prog_name
    global igl_browser_result

    # close any existing browser window
    catch {destroy .brw}

    # make some path tests and "repairs"

    # if start place is empty, use the current work directory
    if {$place == "" } {
	set place [pwd]
    } else {

	# set absolute path (if it is relative)
	# if path is relative
	if { [file pathtype $place] == "relative" } {

	    # use absolute (ignore the given value)
	    set place [pwd]
	    tk_messageBox -icon error -type ok -parent . -title $igl_prog_name \
		-message "The given path cann't be relative.\nListing the predefined:\n$place"
	}
    }

    # test if the given place exist
    if {! [file exists $place]} {

	# if don't: try the work directory
	set other_place [pwd]

	# work directory don't exist, close window
	if {! [file exists $other_place]} {
	    tk_messageBox -icon error -type ok -parent . -title $igl_prog_name \
		-message "The given path was not found\n$place\nand the predefined one, too:\n$other_place\n\nClosing window."
	    destroy .brw
	}

	# alert user
	tk_messageBox -icon error -type ok -parent . -title $igl_prog_name \
	    -message "Not found:\n$place\nListing the alternative:\n$other_place"

	set place $other_place
    }

    # create graphical interface

    # start one browser window
    toplevel .brw

    # define basic aspects
    wm title .brw "Browse"
    wm iconname .brw [join [list $igl_prog_name " - Browse"] ""]
    wm geometry .brw 32x15
    wm minsize .brw 20 11
    wm resizable .brw 1 1

    # create controls

    label .brw.inform -text "Click on \"Accept\" to choose:" -anchor w
    pack .brw.inform -side top -fill both -pady 2

    entry .brw.curr_entry
    .brw.curr_entry insert 0 $place
    .brw.curr_entry configure -state disabled
    pack .brw.curr_entry -side top -fill both -ipady 0 -pady 0

    frame .brw.fr_bts
    pack .brw.fr_bts -side top -fill x

    button .brw.fr_bts.bt_sel -text "Accept" -command {
	# trigger event that handle ACCEPT
	set id [winfo id .brw.files.lst]
	event generate $id <<Accept>>
    }
    button .brw.fr_bts.bt_up -text "Up \[..\]" -command { 
	# trigger event that makes browser goes up in file system hierarchy
	set id [winfo id .brw.files.lst]
	event generate $id <<Up_FS>>
    }
    pack .brw.fr_bts.bt_up -side right
    pack .brw.fr_bts.bt_sel -fill x -side left -expand yes
    # -padx 20 -ipadx 20

    frame .brw.files
    pack .brw.files -side top -fill both -expand yes
    
    scrollbar .brw.files.sc -command ".brw.files.lst yview"
    pack .brw.files.sc -side right -fill y

    listbox .brw.files.lst -yscroll ".brw.files.sc set" \
	              -relief sunken -setgrid yes \
	              -background grey90 -selectbackground lightblue \
	              -selectforeground brown
    pack .brw.files.lst -side left -fill both -expand yes

    button .brw.bt_cancel -text "Cancel" -command {destroy .brw}
    pack .brw.bt_cancel -side bottom -fill x -pady 2

    # create virtual events

    event add <<Fill_List>> <F12>
    event add <<Accept>> <F11>
    event add <<Up_FS>> <F10>

    # setup events

    bind .brw.files.lst <Double-Button-1> {
	set id [winfo id .brw.files.lst]
	event generate $id <<Accept>>
    }

    bind .brw.files.lst <Motion> {  # makes selection follow mouse pointer
	.brw.files.lst selection clear 0 end
	set pos [.brw.files.lst nearest %y]
	.brw.files.lst selection set $pos $pos
    }

    # if ESC is pressed, close
    bind .brw <Escape> {
	destroy .
    }

    # if user clicks, choose entry (list directory or file name)
    bind .brw.files.lst <Button-1> {

	# define new entry name
	set entry_pos [.brw.files.lst nearest %y]
	set choosed_entry [.brw.files.lst get $entry_pos]

	# if current entry is a directory
	if {[file isdirectory [.brw.curr_entry get]]} {
	    # append current path with entry
	    set curr_path [.brw.curr_entry get]
	    set place [file join $curr_path $choosed_entry]
	} else {
	    # don't change current path
	    set place [.brw.curr_entry get]
	}
	
	# update text box
	.brw.curr_entry configure -state normal
	.brw.curr_entry delete 0 end
	.brw.curr_entry insert 0 $place
	.brw.curr_entry configure -state disabled

	# update list
	set id [winfo id .brw.files.lst]
	event generate $id <<Fill_List>>
    }

    bind .brw <Destroy> {  # when window is going to be closed
	# write answer variable just to unblock events
	set igl_browser_result $igl_browser_result
	event delete <<Fill_List>>
	event delete <<Accept>>
	event delete <<Up_FS>>
    }

    # event used to accept the choosed entry
    bind .brw.files.lst <<Accept>> {
	set igl_browser_result [.brw.curr_entry get]
	destroy .brw
    }

    # event used to fill list box
    bind .brw.files.lst <<Fill_List>> {

	set place  [.brw.curr_entry get]

	# fill list with file system entries
	# test if entry exist
	if {[file exists $place]} {

	    # empty list
	    .brw.files.lst delete 0 end

	    # verify if entry is a file
	    if {[file isfile $place]} {
		# don't list it's entries
		set glob_mask $place
	    } else {
		# list file system entries
		set glob_mask "$place/*"
	    }

	    # get entries in file system
	    set fs_entries ""
	    catch [set fs_entries [glob "$glob_mask"]]
	    if {$fs_entries == ""} {  # can't get, or directory is empty
		tk_messageBox -icon warning -type ok -parent .brw -title $igl_prog_name \
		    -message "Is impossible list directory contents (maybe its empty).\n"
	    }
	    # for each entry
	    set fs_entries [lsort $fs_entries]
	    foreach entry $fs_entries {
		set name [file tail $entry]
		# if is a directory append one end "/" to the name
		if {[file isdirectory $entry]} {
		    set name [join [list $name "/"] ""]
		}
		# add to list
		.brw.files.lst insert end $name
	    }
	} else {  # entry not found
	    tk_messageBox -icon error -type ok -parent .brw -title $igl_prog_name \
		-message "Not found\n$place"
	    # update list
	    set id [winfo id .brw.files.lst]
	    event generate $id <<Up_FS>>
	}
    }

    bind .brw.files.lst <<Up_FS>> { 
	# go to upper level in file system hierarchy

	set curr_place [.brw.curr_entry get]
	set path_lst [file split $curr_place]

	# verify if is not in top level
	if { [llength $path_lst] > 1 } {

	    # remove last path name, going up

	    # empty the last element (when joing, it will go out)
	    set path_lst [lreplace $path_lst end end "" ]
	    # remove first /, to make right concatenation
	    if { [lindex $path_lst 0] == "/" } {
		set path_lst [lreplace $path_lst 0 0 "" ]
	    }
	    set new_place [join $path_lst "/"]
	} else {
	    set new_place $curr_place
	}

	# update text box
	.brw.curr_entry configure -state normal
	.brw.curr_entry delete 0 end
	.brw.curr_entry insert 0 $new_place
	.brw.curr_entry configure -state disabled

	# trigger event that fill list with file system entries
	set id [winfo id .brw.files.lst]
	event generate $id <<Fill_List>>
    }

    # trigger event that fill list with directory entries
    set id [winfo id .brw.files.lst]
    event generate $id <<Fill_List>>

    # wait while browsing was not ended

    set igl_browser_result ""

    # wait while answer variable is ready (block events)
    vwait igl_browser_result;

    return $igl_browser_result
}



# Set window title bar and icon name.
proc iface_set_gui_names {} {

    global igl_prog_name 
    global igl_prog_version
    global igl_data_file

    wm title . [join [list $igl_data_file " - " $igl_prog_name " " $igl_prog_version] ""]
    wm iconname . [join [list $igl_prog_name ": " $igl_data_file] ""]
}



# Set application data with controls contents.
proc iface_update_app_data {} {

    global igl_line_len
    global igl_c_preprocess
    global igl_c_translate
    global igl_c_case
    global igl_c_subdirs
    global igl_c_text_only
    global igl_e_avoid_files
    global igl_e_search_command
    global igl_e_temp_dir
    global igl_e_preprocess_assocs
    global igl_r_where
    global igl_active_tab
    global igl_prev_active_view

    if { $igl_prev_active_view == 0} {

      # viewing plan

      # define grid list (list of lines; lines are lists with cells contents)
      if { $igl_active_tab == 0 } {

          set grid_lst {}

          # for each line in grid
          for {set lin 0} {$lin < [llength $igl_line_len]} {incr lin} {

              # line length
              set len [lindex $igl_line_len $lin]
   	
              set line_lst {}

              # for each line cell
              for {set col 0} {$col < $len} {incr col} {

          	# get cell contents
          	set cell_name .tab_ctls.cells.e$col$lin
          	set contents [$cell_name get]

          	# append contents to line list
   	
          	if {$contents != ""} {
          	    lappend line_lst $contents
          	}
              }

              # append line list to grid list
              if {[llength $line_lst] > 0} {
          	lappend grid_lst $line_lst
              }
          }

          # update
          app_set_data 0 $grid_lst
      }

      # define where search list
      if { $igl_active_tab == 1 } {

          # define file system entries where make search
          set start_lst [.tab_ctls.f_l.l_f get 0 end]

          # update
          app_set_data 1 $start_lst
      }

      # define search options list
      if { $igl_active_tab == 2 } {

          set op_lst [list $igl_c_preprocess \
          		$igl_c_translate \
          		$igl_c_case \
          		$igl_c_subdirs \
          		$igl_c_text_only \
          		$igl_r_where \
          		$igl_e_avoid_files \
          		$igl_e_search_command \
          		$igl_e_temp_dir \
          		$igl_e_preprocess_assocs]

          # update
          app_set_data 2 $op_lst
      }
    } else {     # viewing result

      set the_result [.tab_ctls.lst get 0 end]
      app_set_data 3 $the_result
    }
}



# Stores controls contents in application data,
# update application state (the enabled controls flags,
# what controls would be visible and usable),
# draw tab controls and main menu acording a new
# application state.
# Those three actions are controled by the three given parameters.
# action - 0-change app state (view and/or tab), store app data, redraw;
#          1-change app view state, store app data, redraw;
#          2-change app tab state, store app data, redraw;
#          3-don't change both app view and tab states, store app data, redraw;
#          4-redraw with app data (no state change or app data update).
#          5-change app states, redraw with app data (don't store controls data).
# new_view - the new app state for active view (0-plan, 1-result)
# new_tab - the new app state for active tab
#           (if view is 0: 0-activate grid tab, 1-options tab);
proc iface_update_ctls {action new_view new_tab} {

    global igl_active_tab
    global igl_active_view
    global igl_prev_active_view

    # store controls contents in app data
    if {$action != 4 && $action != 5} {
	iface_update_app_data
    }

    # change view app state
    if {$action == 1} {
	set new_tab $igl_active_tab
    }

    # change tab app state 
    if {$action == 2} {
	set new_view $igl_prev_active_view
    }

    # don't change app states
    if {$action == 3 || $action == 4} {
	set new_tab $igl_active_tab
	set new_view $igl_prev_active_view
	# to force redraw
	set igl_active_tab -1
    }
    
    # (re)draw, if exists some efective state change
    if {$new_view != $igl_prev_active_view ||
        $new_tab != $igl_active_tab} {

	  iface_update_var_menu	$new_view

      	  if {$new_view == 1} {
	        # activate result
                iface_create_result
           } else {
                # activate plan
		if { $new_tab == 0 } {
		    # activate plan - grid
		    iface_create_grid
		}
		if { $new_tab == 1 } {
		    # activate plan - where
		    iface_create_where_lst
		}
		if { $new_tab == 2 } {
		    # activate plan - options
		    iface_create_options_bar
		}
	   }
   }

    set igl_active_tab $new_tab
    set igl_prev_active_view $new_view
    # it is quite a dummy variable
    set igl_active_view $new_view
}



# Add one cell to search expression grid.
# Update buttons position.
# lin - grid line index; start indexing in 0 - corresponding to first
#       (top) line; if -1 creates a new line at grid end.
#
# The new cell will be placed at line end (if the given line
# index exists, else, at grid end).
#
# Global Vars:
# igl_line_len - update with new cell position;
# igl_butts_id - read button ID and can update,
#                  if need create a new line.
proc iface_create_cell {lin} {

    global igl_line_len
    global igl_butts_id

    # if grid is empty
    if {[llength $igl_line_len] == 0} {
	
	# creates "ADD LINE" button
	button .tab_ctls.cells.b_new_line -text "or . . ." -command "ih_create_cell -1"
	set id [.tab_ctls.cells create window 6 6 -width 200 -height 25 -anchor nw -window .tab_ctls.cells.b_new_line]
	lappend igl_butts_id $id
    }

    # how many cells has the line
    set line_len [lindex $igl_line_len $lin]

    # verify if line exists
    if { $line_len != "" } {     # yes

	# new cell index
	set col $line_len

	# moves "ADD CELL" button
	set id [lindex $igl_butts_id $lin]
	.tab_ctls.cells move $id 206 0

    } else { # don't exists

	# define line and column where place the new cell
	set col 0
	set lin [llength $igl_line_len]

	# append new line length entry at list end
	lappend igl_line_len 0

	# moves "ADD LINE" button down
	set id [lindex $igl_butts_id end]
	.tab_ctls.cells move $id 0 31

	# creates "ADD CELL" button at line end
	set nome .tab_ctls.cells.b$lin
	button $nome -text "and too . . ." -command "ih_create_cell $lin"
	set id [.tab_ctls.cells create window 212 [expr 6 + 31 * $lin] \
		                          -width 200 -height 25 \
                                          -anchor nw -window $nome]

	# adds button id to list
	# copy last list element ("ADD LINE" button id)
	lappend igl_butts_id [lindex $igl_butts_id end]
	# update the "pre-"last element
	set igl_butts_id [lreplace $igl_butts_id $lin $lin $id ]	
    }
	
    # defines information about the new cell entry control
    set name_ctl .tab_ctls.cells.e$col$lin
    set pos_x [expr 6 + 206 * $col]
    set pos_y [expr 6 + 31  * $lin]

    # creates control for text editing, focus it
    entry $name_ctl
    .tab_ctls.cells create window $pos_x $pos_y -width 200 -height 25 -anchor nw -window $name_ctl

    # focus entry
    focus $name_ctl

    # updates line lengths list
    set igl_line_len [lreplace $igl_line_len $lin $lin [expr $col + 1] ]
}



# Fill tab with grid controls.
proc iface_create_grid {} {

  global igl_line_len
  global igl_butts_id

  # clear space where controls will be
  catch {destroy .tab_ctls}

  # reset control variables

  set igl_line_len {}
  set igl_butts_id {}

  # creates one empty grid (to type expressions in cells)

  # define controls: canvas (cells area for display), horizontal scroll bar,
  # and vertical scroll bar
  frame .tab_ctls -relief flat
  pack .tab_ctls -side top -fill both -expand yes
  scrollbar .tab_ctls.scroll_h -command ".tab_ctls.cells xview" -orient horiz
  scrollbar .tab_ctls.scroll_v -command ".tab_ctls.cells yview"
  canvas .tab_ctls.cells -relief flat -background grey65 \
                     -scrollregion {0 0 2066 347} \
                     -xscrollcommand ".tab_ctls.scroll_h set" \
                     -yscrollcommand ".tab_ctls.scroll_v set"

  # defines controls place
  # position cells area on grid top
  pack .tab_ctls.cells -side top -fill both

  # defines 3 divisions in grid and places one control in each division
  grid rowconfig    .tab_ctls 0 -weight 1
  grid columnconfig .tab_ctls 0 -weight 1
  grid .tab_ctls.cells -in .tab_ctls -row 0 -column 0 -padx 4 -pady 4 -sticky nesw
  grid .tab_ctls.scroll_h -in .tab_ctls -row 1 -column 0 -padx 4 -sticky ew
  grid .tab_ctls.scroll_v -in .tab_ctls -row 0 -column 1 -pady 4 -sticky ns

    # populate grid with cells acording application data

    set grid_lst [app_get_data 0]

    # if list is empry (application has no data)
    if {$grid_lst == {} } {

	# creates one empty cell
	iface_create_cell 0
    } else {

	# for each new line in grid
	for {set lin 0} {$lin < [llength $grid_lst]} {incr lin} {
	    
	    # define line
	    
	    set line_lst [lindex $grid_lst $lin]

	    # line length
	    set len [llength $line_lst]

	    # for each new line cell
	    for {set col 0} {$col < $len} {incr col} {

		# create a cell
		iface_create_cell $lin

		# get cell contents from list
		set contents [lindex $line_lst $col]

		# set cell contents in grid
		.tab_ctls.cells.e$col$lin insert 0 $contents
	    }
	}
    }

    # change the tab buttons

    set backc [lindex [. configure -background] end]
    .tab_sel.s0 configure -background $backc -text "What search" -font {Courier 12 bold}
    .tab_sel.s1 configure -background grey85 -text "Where" -font {Courier 14}
    .tab_sel.s2 configure -background grey85 -text "How" -font {Courier 14}
}



# Creates the list of entries to start search.
proc iface_create_where_lst {} {

    # clear space where controls will be placed
    catch {destroy .tab_ctls}

    frame .tab_ctls
    pack .tab_ctls -side top -fill both -expand yes

    frame .tab_ctls.cab
    pack .tab_ctls.cab -side top -pady 2

    frame .tab_ctls.f_l
    pack .tab_ctls.f_l -side top -fill both -expand yes
    listbox .tab_ctls.f_l.l_f -selectmode extended \
	    -selectbackground lightblue -background grey95 \
	    -selectforeground brown \
            -yscrollcommand ".tab_ctls.f_l.s_v set" \
            -xscrollcommand ".tab_ctls.s_h set"
    scrollbar .tab_ctls.f_l.s_v -command ".tab_ctls.f_l.l_f yview"
    pack .tab_ctls.f_l.l_f \
         -side left -anchor w -pady 2 -fill both -expand yes
    pack .tab_ctls.f_l.s_v \
         -side right -anchor w -pady 2 -fill y
    scrollbar .tab_ctls.s_h -command ".tab_ctls.f_l.l_f xview" -orient horiz
    pack .tab_ctls.s_h -side top -pady 0 -fill x

    frame .tab_ctls.f_wbs
    pack .tab_ctls.f_wbs -fill x -side top

    button .tab_ctls.f_wbs.b_w0 -text "Add..." -command "ih_add_fs_entry"
    button .tab_ctls.f_wbs.b_w1 -text "Remove..." -command "ih_remove_fs_entries"
    pack .tab_ctls.f_wbs.b_w0 \
	 .tab_ctls.f_wbs.b_w1 \
	 -side left -fill x -expand yes -pady 0

    # define events

    bind .tab_ctls.f_l.l_f <Double-Button-1> {
	set entry_pos [.tab_ctls.f_l.l_f nearest %y]
	.tab_ctls.f_l.l_f activate $entry_pos
        iface_win_add_fs_entry 1
    }

    focus .tab_ctls.f_wbs.b_w0

    # set controls acording application data

    set fs_entries [app_get_data 1]

    # populate listbox
    foreach el $fs_entries {
	.tab_ctls.f_l.l_f insert end $el
    }

    # change the tab buttons

    set backc [lindex [. configure -background] end]
    .tab_sel.s0 configure -background grey85 -text "What" -font {Courier 14}
    .tab_sel.s1 configure -background $backc -text "Where search" -font {Courier 12 bold}
    .tab_sel.s2 configure -background grey85 -text "How" -font {Courier 14}
}



# Creates the search options bar.
proc iface_create_options_bar {} {

    global igl_c_preprocess
    global igl_c_translate
    global igl_c_case
    global igl_c_subdirs
    global igl_c_text_only
    global igl_e_avoid_files
    global igl_e_search_command
    global igl_e_temp_dir
    global igl_e_preprocess_assocs
    global igl_r_where

    # clear space where controls will be placed
    catch {destroy .tab_ctls}

  frame .tab_ctls
  pack .tab_ctls -side top -fill both -expand yes

    frame .tab_ctls.cab
    pack .tab_ctls.cab -side top -pady 5

  frame .tab_ctls.left_bar 
  frame .tab_ctls.right_bar
  pack .tab_ctls.left_bar .tab_ctls.right_bar -side left -ipady 10 -padx 12 -expand yes -fill both -anchor center

  checkbutton .tab_ctls.left_bar.w0 -text "convert HTML acents" -variable igl_c_translate -relief flat
  checkbutton .tab_ctls.left_bar.w1 -text "differ char case" -variable igl_c_case -relief flat
  checkbutton .tab_ctls.left_bar.w2 -text "search inside subdirectories" -variable igl_c_subdirs -relief flat
  checkbutton .tab_ctls.left_bar.w3 -text "if possible, preprocess file" -variable igl_c_preprocess -relief flat
  checkbutton .tab_ctls.left_bar.w4 -text "search only textual contents" -variable igl_c_text_only -relief flat
  pack .tab_ctls.left_bar.w0 .tab_ctls.left_bar.w1 .tab_ctls.left_bar.w2 \
      .tab_ctls.left_bar.w3 .tab_ctls.left_bar.w4 -side top -anchor w

  frame .tab_ctls.left_bar.marg
  pack .tab_ctls.left_bar.marg -side top -pady 7

  label .tab_ctls.left_bar.l_cm -text "Search command (and permanent options):" -anchor w
  entry .tab_ctls.left_bar.e_cm -textvariable igl_e_search_command
  label .tab_ctls.left_bar.l_av -text "Avoid files with the sufixes:" -anchor w
  entry .tab_ctls.left_bar.e_av -textvariable igl_e_avoid_files
  label .tab_ctls.left_bar.l_tp -text "Temporary directories:" -anchor w
  entry .tab_ctls.left_bar.e_tp -textvariable igl_e_temp_dir
  label .tab_ctls.left_bar.l_as -text "Associations between files and preprocessors:" -anchor w
  entry .tab_ctls.left_bar.e_as -textvariable igl_e_preprocess_assocs
  label .tab_ctls.left_bar.l_ac -text "(%n would the replaced by the file name to be preprocessed)" -anchor w
  label .tab_ctls.left_bar.l_ac2 -text "(%e as %n, but without sufix)" -anchor w
  pack .tab_ctls.left_bar.l_cm .tab_ctls.left_bar.e_cm \
	.tab_ctls.left_bar.l_av .tab_ctls.left_bar.e_av \
	.tab_ctls.left_bar.l_tp .tab_ctls.left_bar.e_tp \
	.tab_ctls.left_bar.l_as .tab_ctls.left_bar.e_as \
	.tab_ctls.left_bar.l_ac .tab_ctls.left_bar.l_ac2 \
	-anchor w -pady 2 -fill x -anchor w

  label .tab_ctls.right_bar.l_co -text "Match with..." -height 1 -anchor s
  radiobutton .tab_ctls.right_bar.r_co0 -text "name" -relief flat \
                            -variable igl_r_where -value 1
  radiobutton .tab_ctls.right_bar.r_co1 -text "contents" -relief flat \
                            -variable igl_r_where -value 2
  radiobutton .tab_ctls.right_bar.r_co2 -text "name and contents" -relief flat \
                            -variable igl_r_where -value 3
  label .tab_ctls.right_bar.l_co2 -text "... of files and directories." -height 1 -anchor s
  pack .tab_ctls.right_bar.l_co .tab_ctls.right_bar.r_co0 \
      .tab_ctls.right_bar.r_co1 .tab_ctls.right_bar.r_co2 \
	.tab_ctls.right_bar.l_co2 \
	-side top -anchor nw

    frame .tab_ctls.right_bar.rod
    pack .tab_ctls.right_bar.rod -side top -pady 5

    # define events

    focus .tab_ctls.left_bar.e_cm

    # set controls acording application data

    set op_lst [app_get_data 2]

    set igl_c_preprocess [lindex $op_lst 0]
    set igl_c_translate [lindex $op_lst 1]
    set igl_c_case [lindex $op_lst 2]
    set igl_c_subdirs [lindex $op_lst 3]
    set igl_c_text_only [lindex $op_lst 4]
    set igl_r_where [lindex $op_lst 5]
    set igl_e_avoid_files  [lindex $op_lst 6]
    set igl_e_search_command  [lindex $op_lst 7]
    set igl_e_temp_dir [lindex $op_lst 8]
    set igl_e_preprocess_assocs [lindex $op_lst 9]
    # populate listbox
    set fs_entries [lindex $op_lst 10]
    foreach el $fs_entries {
	.tab_ctls.right_bar.f_l.l_f insert end $el
    }

    # change the tab buttons

    set backc [lindex [. configure -background] end]
    .tab_sel.s0 configure -background grey85 -text "What" -font {Courier 14}
    .tab_sel.s1 configure -background grey85 -text "Where" -font {Courier 14}
    .tab_sel.s2 configure -background $backc -text "How search" -font {Courier 12 bold}
}



# Activate the result view
proc iface_create_result {} {
	
	# creates result listing
        catch {destroy .tab_ctls}
	.tab_sel.s0 configure -foreground grey20 -background grey85 -text "What" -font {Courier 12}
        .tab_sel.s1 configure -foreground grey20 -background grey85 -text "Where" -font {Courier 12}
        .tab_sel.s2 configure -foreground grey20 -background grey85 -text "How" -font {Courier 12}
        frame .tab_ctls -relief flat
        pack .tab_ctls -side top -fill both -expand yes

	button .tab_ctls.b_search -text "Search..." -command "ih_search"
        pack .tab_ctls.b_search -side bottom -fill x

        scrollbar .tab_ctls.sc -command ".tab_ctls.lst yview"
        pack .tab_ctls.sc -side right -fill y

        listbox .tab_ctls.lst -yscroll ".tab_ctls.sc set" \
	       -relief sunken -selectbackground lightblue \
	       -selectforeground brown  \
	       -background grey95 -selectmode extended
        pack .tab_ctls.lst -side left -fill both -expand yes

        # fill result with app data
        set the_result [app_get_data end]
        # populate listbox
        foreach el $the_result {
          .tab_ctls.lst insert end $el
        }

	# define events
	bind .tab_ctls.lst <Button-1> {
	    # activate the pressed item
	    set pos [.tab_ctls.lst nearest %y]
	    .tab_ctls.lst activate $pos
	}
	
	focus .tab_ctls.b_search
	#iface_win_init_search
}



# Updates variable menu itens, acording the active view.
proc iface_update_var_menu {new_view} {

   global igl_prog_name

  .main_menu delete 1
  catch [destroy .main_menu.edit]
  menu .main_menu.edit -tearoff 0
  .main_menu insert 1 cascade -menu .main_menu.edit -underline 0 \
      -label "Edit"
  
  if {$new_view == 0} {
    .main_menu.edit add command -label "Remove Empty Cells" \
      -underline 0 -command "ih_remove_empty_cells $igl_prog_name"
  } else {
    .main_menu.edit add command -label "Remove..." -underline 0 \
      -command "ih_result_select_delete"
    .main_menu.edit add separator
    .main_menu.edit add command -label "Select All" -underline 11 \
      -command "ih_result_select_all"
    .main_menu.edit add command -label "Select None" -underline 11 \
      -command "ih_result_unselect_all"
    .main_menu.edit add command -label "Invert Selection" -underline 0 \
      -command "ih_result_select_invert"
  }
}



# Creates the main window and it's basic controls.
proc iface_win_create_main {} {

  global igl_prog_name
  global igl_active_tab

  # if window don't exists
  if { ! [winfo exists .] } {
      # create it
      toplevel .
      wm withdraw .
  }

  # defines basic window aspects
  wm geometry . 600x436
  wm minsize . 550 410
  wm maxsize . 800 436
  wm resizable . 1 1
  iface_set_gui_names

  # create menu

  # horizontal menu bar
  menu .main_menu -tearoff 0
  . configure -menu .main_menu  

  # file submenu
  menu .main_menu.file -tearoff 0
  
  # reutilizate submenu
  menu .main_menu.file.reutilizate -tearoff 0
  .main_menu.file.reutilizate add command -label "All" \
    -underline 0 -command "ih_save_defaults -1"
  .main_menu.file.reutilizate add separator
  .main_menu.file.reutilizate add command -label "What" \
    -underline 0 -command "ih_save_defaults 0"
  .main_menu.file.reutilizate add command -label "Where" \
    -underline 2 -command "ih_save_defaults 1"
  .main_menu.file.reutilizate add command -label "How" \
    -underline 0 -command "ih_save_defaults 2"

  # populate file submenu
  .main_menu add cascade -menu .main_menu.file -label "File" -underline 0
  .main_menu.file add command -label "New..." -underline 0 -command "ih_new_file $igl_prog_name"
  .main_menu.file add command -label "Open..." -underline 0 -command "ih_open_file $igl_prog_name"
  .main_menu.file add command -label "Salve" -underline 0 -command "ih_save_file"
  #.main_menu.file add command -label "Salve As..." -underline 7 -command "ih_save_as_file"
  .main_menu.file add separator
  .main_menu.file add command -label "Export Result..." -underline 0 \
      -command "ih_result_export"
  .main_menu.file add separator
  .main_menu.file add cascade -menu .main_menu.file.reutilizate -label "Reutilize" -underline 2
  .main_menu.file add separator
  .main_menu.file add command -label "Exit..." -underline 3 -command "ih_end_app $igl_prog_name"

  # this menu will change acording application state
  .main_menu add cascade -menu .main_menu.edit -label "(Edit)"

  # view submenu
  menu .main_menu.view -tearoff 0
  .main_menu add cascade -menu .main_menu.view -label "View" \
    -underline 0
  .main_menu.view add radiobutton -label "Plan" \
    -underline 0 -value 0 -variable igl_active_view -command \
    "iface_update_ctls 1 0 -1"
  .main_menu.view add radiobutton -label "Search Result" \
    -underline 0 -value 1 -variable igl_active_view -command \
    "iface_update_ctls 1 1 -1"

  # help submenu
  menu .main_menu.help -tearoff 0
  .main_menu add cascade -menu .main_menu.help -label "Help" \
    -underline 0
  .main_menu.help add command -label "About..." \
    -underline 0 -command "ih_help_about"

  # creates the tab selectior buttons
  frame .tab_sel -background grey85
  pack .tab_sel -side top -fill x
  label .tab_sel.s0 -text "(Sheet)" -relief flat -pady 1
  label .tab_sel.s1 -text "(Place)" -relief flat -pady 1
  label .tab_sel.s2 -text "(Options)" -relief flat -pady 1
  pack .tab_sel.s0 .tab_sel.s1 .tab_sel.s2 -side left -fill x -expand yes

    # set X Window message remap

    wm protocol . WM_DELETE_WINDOW "ih_end_app $igl_prog_name"

    # set bindings

    # if first tab button was pressed
    bind .tab_sel.s0 <Button-1> {
	iface_update_ctls 0 0 0
    }

    # if second tab button was pressed
    bind .tab_sel.s1 <Button-1> {
	iface_update_ctls 0 0 1
    }

    # if thirth tab button was pressed
    bind .tab_sel.s2 <Button-1> {
	iface_update_ctls 0 0 2
    }

    # controls never drawn, activate grid controls drawing them
    iface_update_ctls 5 0 0
}



# Creates and manages one dialog window to type new
# file system entries where search.
# edit_entry - 1-will edit one existing entry
#              0-will add a new one
proc iface_win_add_fs_entry {edit_entry} {

    global igl_prog_name

    # close any existing dialog window with execution parameters
    catch {destroy .ew}

    # start one window
    toplevel .ew

    # define basic spects
    wm title .ew "Add Place Where Search"
    wm iconname .ew [join [list $igl_prog_name " - Add Place"] ""]
    wm minsize .ew 300 50
    wm resizable .ew 1 0

    # create graphical interface

    label .ew.cab -text "Type the place (click on \"Browse\" to select from one list):" -anchor w
    entry .ew.e
    button .ew.b_sel -text "Browse..." -command {
	# get the entry name
	set res ""
	set res [iface_win_browse_fs [.ew.e get]]
	# if some entry was selected
	if { $res != "" } {
	    .ew.e delete 0 end
	    .ew.e insert 0 $res
            # add entry contents and close
	    .tab_ctls.f_l.l_f insert end [.ew.e get]
	    destroy .ew
	}
    }

    pack .ew.cab .ew.e .ew.b_sel -side top -fill both -pady 0 -anchor w

    frame .ew.rod
    pack .ew.rod -side top -fill x

    if {$edit_entry == 0} {
      button .ew.rod.b_add -text "Add" -command {
	  .tab_ctls.f_l.l_f insert end [.ew.e get]
	  destroy .ew
      }
    } else {
      button .ew.rod.b_add -text "Add" -command {
          .tab_ctls.f_l.l_f delete active active
	  .tab_ctls.f_l.l_f insert active [.ew.e get]
	  destroy .ew
      }
    }

    button .ew.rod.b_canc -text "Cancel" -command "destroy .ew"
    pack .ew.rod.b_add .ew.rod.b_canc -fill both -side left -expand yes

    # fill entry
    if {$edit_entry == 0} {
      .ew.e insert 0 [.tab_ctls.f_l.l_f get end]
    } else {
      .ew.e insert 0 [.tab_ctls.f_l.l_f get active]
    }

    focus .ew.e
}



# Remove the selected entries from where to search listbox.
proc iface_remove_fs_entries {} {

    global igl_prog_name

    # list with selected entries indexes
    set sel_indexes [.tab_ctls.f_l.l_f curselection]

    if {$sel_indexes == ""} {
	tk_messageBox -icon error -type ok -parent . -title $igl_prog_name \
	    -message "Before remove, select the list itens, clicking on their lines."
	return
    } else {

	# confirm
	set num [llength $sel_indexes]
	set confirm [tk_messageBox -icon question -type yesno -parent . -title $igl_prog_name \
			 -message "Want remove $num element(s) from the list?"]

	if {$confirm == "yes"} {
	
	    set num_indexes [llength $sel_indexes]
	    for {set c 0} {$c < $num} {incr c} {
	    
	       set pos_ind [expr $num - $c - 1]
	       set ind [lindex $sel_indexes $pos_ind]
               .tab_ctls.f_l.l_f delete $ind $ind
	    }
	}
    }
}



# Set initial values for search options variables.
proc iface_init_search_data {} {

    global igl_c_preprocess
    global igl_c_translate
    global igl_c_case
    global igl_c_subdirs
    global igl_c_text_only
    global igl_e_avoid_files
    global igl_e_search_command
    global igl_e_temp_dir
    global igl_e_preprocess_assocs
    global igl_r_where

    global igl_line_len
    global igl_butts_id

    # set default controll values
    set igl_c_preprocess 1
    set igl_c_translate 1
    set igl_c_case 0
    set igl_c_subdirs 1
    set igl_c_text_only 1
    set igl_e_avoid_files ""
    set igl_e_search_command ""
    set igl_e_temp_dir ""
    set igl_e_preprocess_assocs ""
    set igl_r_where 2

    set igl_line_len {}
    set igl_butts_id {}
}



# Set initial values for general user inferface variables.
proc iface_init_session_data {} {

  global igl_prog_name
  global igl_prog_version
  global igl_file_version
  global igl_default_file_version
  global igl_data_file
  global igl_data_file_path
  global igl_data_pathfile

  set igl_data_file "a.flz"
  set igl_data_file_path [pwd]
  set igl_data_pathfile [join [list $igl_data_file $igl_data_file_path] "" ]

  set igl_prog_name "Flaristo"
  set igl_prog_version "0.1.4"
  set igl_file_version "0"
  set igl_default_file_version "0"
}



# Start GUI.
proc iface_build {} {

  global igl_prev_active_view

  set igl_prev_active_view -1

  iface_win_create_main
}



# Process request to start search
proc iface_win_init_search {} {

    global igl_prog_name

    # define expression to search for
    set grid_exp [app_get_data 0]

    # test if has errors
    if {$grid_exp == {}} {
	tk_messageBox -icon error -type ok -parent . -title $igl_prog_name \
		 -message \
		 "To search, fill the sheet with the text to look for."
	iface_update_ctls 0 0 0
	 return
    }

    # show execution parameters to user, allow change them

    # close any existing dialog window with execution parameters
    catch {destroy .epw}

    # start one window
    toplevel .epw

    # define basic spects
    wm title .epw "Start Search"
    wm iconname .epw [join [list $igl_prog_name " - Start Search"] ""]
    wm minsize .epw 450 100
    wm resizable .epw 1 0

    # create graphical interface

    label .epw.cab -text "The search would be performed with the command:" -anchor w
    pack .epw.cab -side top -fill both -pady 2 -anchor w

    frame .epw.rod
    pack .epw.rod -side bottom -pady 1 -fill x

    button .epw.rod.b_exec -text "Start" -command {
	# to start search
	set exec_line [.epw.params get]
	destroy .epw
	iface_win_make_search $exec_line
    }
    button .epw.rod.b_canc -text "Cancel" -command "destroy .epw"
    pack .epw.rod.b_exec .epw.rod.b_canc -fill both -side left -expand yes

    entry .epw.params -relief sunken -xscrollcommand ".epw.sc set"
    scrollbar .epw.sc -command ".epw.params xview" -orient horiz
    pack .epw.params .epw.sc -side top -fill both -pady 2 -padx 4

    # define command to execute

    .epw.params insert 0 [app_get_command_line]

    focus .epw.params
}



# Process search.
proc iface_win_make_search {exec_cmd} {

    global igl_prog_name

    # show execution parameters to user

    # close any existing dialog window
    catch {destroy .sw}

    # start one window
    toplevel .sw

    # define basic spects
    wm title .sw "Searching"
    wm iconname .sw [join [list $igl_prog_name " - Searching"] ""]
    wm geometry .sw 500x320
    wm minsize .sw 300 110
    wm resizable .sw 1 1

    # create graphical interface

    button .sw.b_canc -text "Stop" -command {
	iface_win_end_search .sw
    }
    pack .sw.b_canc -fill both -side bottom

    label .sw.cab -text "Performing search with the command:" -anchor w
    pack .sw.cab -side top -fill x -pady 2

    frame .sw.cmd
    pack .sw.cmd -fill x -side top
    text .sw.cmd.exec -relief ridge -yscrollcommand ".sw.cmd.sc set" -height 3
    .sw.cmd.exec insert 0.0 $exec_cmd
    .sw.cmd.exec configure -state disabled
    scrollbar .sw.cmd.sc -command ".sw.cmd.exec yview"
    pack .sw.cmd.sc -side right -fill y
    pack .sw.cmd.exec -fill x -padx 4

    frame .sw.mid
    pack .sw.mid -side top -fill x -pady 7

    label .sw.midt -text "Partial results:" -anchor w
    pack .sw.midt -side top -fill x -pady 2

    listbox .sw.res -relief sunken -selectmode multiple \
	-yscrollcommand ".sw.sr set"
    scrollbar .sw.sr -command ".sw.res yview"
    pack .sw.sr -side right -fill y
    pack .sw.res -fill x -expand yes -padx 4

    # define events and user interface relations

    bind .sw <Destroy> {  # when window is going to be closed
 	# if channel was not closed, close it
	catch { close [app_get_search_channel] }
    }

    # execute search

#@@@ iface_win_end_search .sw
   set res [app_make_search .sw .sw.res $exec_cmd]
   if {$res == 0} { # if can't make search, close window
	destroy .sw
   }	
}



# Inform user about search end.
# Update result search window.
# out_win - the output search window
proc iface_win_end_search {out_win} {

    global igl_prog_name

    wm title $out_win "Search Results"
    wm iconname $out_win [join [list $igl_prog_name " - Search Ended"] ""]

    $out_win.b_canc configure -text "Close"

    # sound warning about search end
    bell

    tk_messageBox -icon info -type ok -title $igl_prog_name \
		     -message "Search ended.\n\nThe itens included in resulting list would be selected."

    #@@@
    #.sw.res insert end ">> L1 <<"
    #.sw.res insert end ">> L2 <<"
    #.sw.res insert end ">> L3 <<"
    #.sw.res insert end ""

    # add received result to the result list

    # get the number of current itens in result list
    set num_old [llength [.tab_ctls.lst get 0 end]]

    # get data about new search results
    set new_lst [.sw.res get 0 end]

    # insert new results at end
    set first_found 1
    foreach el $new_lst {

	# filter the search output
	# ignore lines without the predefined codes
	set lopen [string index $el 0]
	set lcode [string index $el 1]
	set lclose [string index $el 2]
	if {($lcode == "3" ||
	     $lcode == "4" ||
	     $lcode == "5" ||
	     $lcode == "6" ||
	     $lcode == "9" ||
	     $lcode == "b" ||
	     $lcode == "d" ||
	     $lcode == "e" ) &&
	    $lopen == "(" &&
	    $lclose == ")" } {

	    # insert one empty line, if at new contnts found
	    if {$lcode == "3" || $lcode == "5"} {

		if {$first_found == 0} {
		    .tab_ctls.lst insert end ""
		} else {
		    set first_found 0
		}
	    }		
	    
	    # insert line in list
	    if {$lcode == "6"} {
		# remove the code from beginning of line, truncate line
		set lcont [string range $el 4 54]
		# insert
		.tab_ctls.lst insert end "... $lcont ..."
	    } else {
		# remove the code from beginning of line
		set lcont [string range $el 4 end]
		# insert
		.tab_ctls.lst insert end $lcont
	    }
	}
    }
    .tab_ctls.lst insert end ""

    # select new elements (unselect previous selection)
    .tab_ctls.lst selection clear 0 end
    .tab_ctls.lst selection set $num_old end
    .tab_ctls.lst see [expr $num_old - 2]

    iface_update_app_data

    destroy .sw
}



# Select all itens in result list.
proc iface_result_select_all {} {
      .tab_ctls.lst selection set 0 end
}



# Unselect all itens in result list.
proc iface_result_unselect_all {} {
      .tab_ctls.lst selection clear 0 end
}



# Invert selection in result list.
proc iface_result_select_invert {} {

    # list with selected entries indexes
    set sel_indexes [.tab_ctls.lst curselection]

    # unselect all
    .tab_ctls.lst selection clear 0 end

    # select the needed elements
    set num_lst [.tab_ctls.lst size]
    for {set c 0} {$c < $num_lst} {incr c} {
	    
	# verify if the listbox item was previously selected
	set was_sel [lsearch -exact $sel_indexes $c]

	if {$was_sel == -1} { # if don't
	    .tab_ctls.lst selection set $c $c
	}
    }
}



# Delete selected itens from result list.
proc iface_result_select_delete {} {

    global igl_prog_name

    # list with selected entries indexes
    set sel_indexes [.tab_ctls.lst curselection]

    #confirm
    set num [llength $sel_indexes]
    set confirm [tk_messageBox -icon question -type yesno -parent . -title $igl_prog_name \
		     -message "Remove $num line(s) from the list?"]

    if {$confirm == "yes"} {
	
	for {set c 0} {$c < $num} {incr c} {
	    
	    set pos_ind [expr $num - $c - 1]
	    set ind [lindex $sel_indexes $pos_ind]
	    .tab_ctls.lst delete $ind $ind
	}
    }
}



# Export itens to an external file.
proc iface_result_export {} {

  global igl_data_file_path
  global igl_data_file
  global igl_prog_name

  # verify if have something to export
  set the_result [app_get_data 2]
  set num [llength $the_result]
  if { $num == 0 } {
      tk_messageBox -icon warning -type ok -parent . -title $igl_prog_name \
	  -message \
	  "Thouse search has no results, a result list is empty.\n\nIs recomendable do one search with results, before export."
  }

  set file_types {
      {"HTML" {.html} }
      {"plain text" {.txt} }
      {"HTML, show all"  {*}}}

  # get the new file name
  set file_name [tk_getSaveFile -filetypes $file_types \
                                -defaultextension ".html" \
		                -initialdir $igl_data_file_path \
		                -parent . \
		                -title "Export Result"]

  # if file was selected
  if { $file_name != "" } {

      app_export_result $file_name $igl_data_file_path $igl_data_file $igl_prog_name 
  }
}



# Show about this program information.
proc iface_win_help_about {} {

    global igl_prog_name
    global igl_prog_version

    global igl_prog_name

    # close any existing dialog window
    catch {destroy .aw}

    # start one window
    toplevel .aw

    # define basic spects
    wm title .aw "About"
    wm iconname .aw [join [list $igl_prog_name " - About"] ""]
    wm minsize .aw 300 50
    wm resizable .aw 0 0

    # create graphical interface

    label .aw.t1 -text "$igl_prog_name $igl_prog_version"
    label .aw.t2 -text "Copyright (C) 2001, 2002 Leandro Bernsmüller"
    label .aw.t3 -text "License: GNU-GPL"
    label .aw.t4 -text "E-mail: lebe@geocities.com"
    label .aw.t5 -text "This programm was projected to help textual search inside many files."
    label .aw.t6 -text " "
    button .aw.b -text "Close" -command {destroy .aw} -underline 0
    pack .aw.t1 .aw.t2 .aw.t3 .aw.t4 .aw.t5 .aw.t6 -side top -fill y -anchor w
    pack .aw.b -side top -expand yes -fill both
    focus .aw.b
}




# Insert one empty cell behind the focused cell.
proc iface_insert_cell {} {

    # dbug - implementation not concluded
    iface_update_app_data
    iface_update_ctls 4 -1 -1
}



# Try read one new file, overwriting application data.
proc iface_read_file {file_name} {

	  global igl_data_pathfile
	  global igl_data_file
	  global igl_data_file_path

	  # if file was selected
          if { $file_name == "" } {
		return
	  }

	  # try read
	  set res [app_read_file $file_name]
	  if {$res == 1} {  # success

	      set igl_data_pathfile $file_name
	      set igl_data_file [file tail $file_name]
	      set igl_data_file_path [file dirname $file_name]

	      # update GUI
	      iface_set_gui_names
	      iface_update_ctls 4 -1 -1
	  }
}



# Return current file version.
proc iface_get_file_version {} {
	global igl_file_version
	return $igl_file_version
}



# Return current default config file version.
proc iface_get_default_file_version {} {
	global igl_default_file_version
	return $igl_default_file_version
}



#################################################
# INTERFACE HANDLER PROCEDURES



# Handle about help events
proc ih_help_about {} {
    iface_win_help_about
}



# Confirm user request to end application, and
# terminate it, if is the case.
# msg_title - message box title
proc ih_end_app {msg_title} {

    # confirm
    set confirm [tk_messageBox -icon question -type yesno -parent . -title $msg_title \
		     -message "Confirm the end of this section?"]

    # if is to clear
    if {$confirm == "yes"} {

	destroy .
	return
    }

    return cancel
}



# Make search, if possible
proc ih_search {} {

      # update app data
      iface_update_app_data

      iface_win_init_search
}



# Select all itens in result list.
proc ih_result_select_all {} {
      iface_result_select_all
}



# Unselect all itens in result list.
proc ih_result_unselect_all {} {
      iface_result_unselect_all
}



# Invert selection in result list.
proc ih_result_select_invert {} {
      iface_result_select_invert
}



# Delete selected itens from result list.
proc ih_result_select_delete {} {
      iface_result_select_delete
}



# Export itens to an external file.
proc ih_result_export {} {
      iface_result_export
}



# Handle cell creation.
proc ih_create_cell {lin} {
    iface_create_cell $lin
}



# File open dialog box (for flaristo search files).
# Global Vars:
# igl_data_file - read and, probably, update
# igl_data_file_path - read and, probably, update
# igl_data_pathfile - read and, probably, update
proc ih_open_file {msg_title} {

  global igl_data_file_path

  # confirm
  set confirm [tk_messageBox -icon question -type yesno -parent . -title $msg_title \
		     -message "Confirm open the file?\n\nCurrent data would be lost."]

  # if is to replace
  if {$confirm == "yes"} {

      set file_types { {"search file" {.flz} }
	  {"All"  {*}}}

      # get the new file name
      set file_name [tk_getOpenFile -filetypes $file_types \
                                -defaultextension ".flz" \
		                -initialdir $igl_data_file_path \
		                -parent .]

       iface_read_file $file_name
  }
}



# Save an previous saved file in this secion
# Global Vars:
# igl_data_file - read
# igl_data_file_path - read
# igl_data_pathfile - read
proc ih_save_file {} {

  global igl_data_file
  global igl_data_file_path
  global igl_data_pathfile

  if {$igl_data_file == "a.flz"} {
      ih_save_as_file
  }

  iface_update_app_data
  app_save_file $igl_data_pathfile
}



# Save a file (ask file name).
# Global Vars:
# igl_data_file - read/probably write
# igl_data_file_path - read/probably write
# igl_data_pathfile - read/probably write
proc ih_save_as_file {} {

  global igl_data_file
  global igl_data_file_path
  global igl_data_pathfile

  set file_types { {"search file" {.flz} }
      {"All"  {*}}}

  # get the new file name
  set file_name [tk_getSaveFile -filetypes $file_types \
                                -defaultextension ".flz" \
		                -initialdir $igl_data_file_path \
		                -parent .]

  # if file was selected
  if { $file_name != "" } {

      set igl_data_pathfile $file_name
      set igl_data_file [file tail $file_name]
      set igl_data_file_path [file dirname $file_name]
      
      # update interface
      iface_set_gui_names

      iface_update_app_data
      app_save_file $igl_data_pathfile
  }
}



# Save application data, to be used as default.
# what_save - what kind of data need save
proc ih_save_defaults {what_save} {

    global igl_prog_name

    iface_update_app_data

    # try save, in case of error - warn user
    if {[app_save_defaults $what_save] == 1} {
	tk_messageBox -icon info -type ok -parent . -title $igl_prog_name \
		     -message "Cann't save the configuration file."
    }
}



# Dialog box to add one new entry in search places listbox.
proc ih_add_fs_entry {} {
    iface_win_add_fs_entry 0
}



# Dialog box to remove entries from search places listbox.
proc ih_remove_fs_entries {} {
    iface_remove_fs_entries
}



# Clear current application data
proc ih_new_file {msg_title} {

    # confirm
    set confirm [tk_messageBox -icon question -type yesno -parent . -title $msg_title \
		     -message "Confirm the begining of a new work?\n\nThe current work would be lost."]

    # if is to clear
    if {$confirm == "yes"} {
	app_init
	iface_init_session_data
	app_load_default_data
	iface_set_gui_names
	iface_update_ctls 4 -1 -1
    }
}



# Remove empty cells from grid.
proc ih_remove_empty_cells {msg_title} {

    global igl_active_tab

    if {$igl_active_tab != 0} {
	tk_messageBox -icon info -type ok -parent . -title $msg_title \
	    -message "Is only usefull remove the empty cells if the sheet is visible. If don't, the cells would be removed automatically."
    } else {

	iface_update_app_data
	iface_create_grid
    }
}



# Insert one empty cell in grid.
proc ih_insert_cell {msg_title} {

    global igl_active_tab

    if {$igl_active_tab != 0} {
	tk_messageBox -icon info -type ok -parent . -title $msg_title \
	    -message "New cell can be included only if the sheet is visible."
    } else {

	iface_insert_cell
    }
}



#################################################
# APPLICATION SPECIFIC PROCEDURES



# Init app data
proc app_init {} {

    global agl_search_res_channel
    global agl_search_res_win
    global agl_search_res_widget
    global agl_data
    global agl_config_fname

    set agl_search_res_channel ""
    set agl_search_res_widget ""
    set agl_search_res_win ""

    # default setings
    set agl_data {{}\
		  {}\
		  {1 1 0 1 1 2  ".wav .mp3 .avi .mpg .jpg .gif .bmp .pcx .tga .exe .com .dll" \
		       "flsearch-linux-en.pl -v -c" \
		       "/tmp" \
		       "{.tgz tar zxvf %n} {.tar tar xf %n} {.gz gzip -cd %n > %e} {.zip unzip -Lo %n} {.arj unarj e %n}" \
		       {}\
		   }\
		   {}\
		  }

    set agl_config_fname "~/.flaristorc"
}



# Set application data acording the given data.
# index - define the data list to updata
# new_data - the new data
proc app_set_data {index new_data} {

    global agl_data

    set agl_data [lreplace $agl_data $index $index $new_data]
}



# Get application data.
# index - define the data list to return
# return: the data list
proc app_get_data {index} {

    global agl_data

    return [lindex $agl_data $index]
}



# Loads application defaults from one configuration file.
proc app_load_default_data {} {

    global agl_data
    global agl_config_fname

    # try open file
    set chann ""
    catch { set chann [open "$agl_config_fname" r] }

    # test if can read data
    if {$chann != "" } {

	# read
	# first two lines have only coments, they are discarded
	set trash [gets $chann]
	set trash [gets $chann]
	
	# verify version
	set fvers [gets $chann]
	set vers [iface_get_default_file_version]
	if { $fvers != $vers } {
                close $chann
                return
        }

	set file_contents0 [gets $chann]
	set file_contents1 [gets $chann]
	set file_contents2 [gets $chann]

	close $chann

	# update data
	set agl_data [lreplace $agl_data 0 2 \
			  $file_contents0\
			  $file_contents1\
			  $file_contents2\
			 ]
    }    
}



# Saves application defaults from configuration file.
# what_save - define what save:
#             0 - what; 1 - where; 2 - how; -1 - all
# Return: 1 - ok / 0 - error
proc app_save_defaults {what_save} {

    global agl_data
    global agl_config_fname

    # load default data
    set agl_current_data $agl_data
    app_load_default_data

    # try open file
    set chann ""
    catch { set chann [open "$agl_config_fname" w] }

    # test if can write data
    if {$chann != "" } {

	# write
	puts $chann "\# Flaristo configuration file."
	puts $chann "\# Don't change manualy, lets Flaristo do this."
	puts $chann [iface_get_default_file_version]

	# define what must save
	if {$what_save == -1} {
	    puts $chann [lindex $agl_current_data 0]
	    puts $chann [lindex $agl_current_data 1]
	    puts $chann [lindex $agl_current_data 2]
	}
	if {$what_save == 0} {
	    puts $chann [lindex $agl_current_data 0]
	    puts $chann [lindex $agl_data 1]
	    puts $chann [lindex $agl_data 2]
	}
	if {$what_save == -1} {
	    puts $chann [lindex $agl_data 0]
	    puts $chann [lindex $agl_current_data 1]
	    puts $chann [lindex $agl_data 2]
	}
	if {$what_save == -1} {
	    puts $chann [lindex $agl_data 0]
	    puts $chann [lindex $agl_data 1]
	    puts $chann [lindex $agl_current_data 2]
	}

	close $chann

	# define the app data as the old one
	set agl_data $agl_current_data

	return 0
    }

    # define the app data as the old one
    set agl_data $agl_current_data

    return 1
}



# Build the correspondent regular expression from grid contents.
# The regular expression is based on Perl sintax.
#
# Return:
# string with the regular expression or empty string, if error
proc app_build_regexp {} {

    # define grid list

    set grid_lst [app_get_data 0]

    # store the regular expression
    set expression ""

    # for each line in grid
    for {set lin 0} {$lin < [llength $grid_lst]} {incr lin} {

	# define line

	set line_lst [lindex $grid_lst $lin]

	# line length
	set len [llength $line_lst]

	# if is the first line, don't add operator
	if {$lin != 0} {
	    set expression [join [list $expression "|"] ""]
	}

	# for each line cell
	for {set col 0} {$col < $len} {incr col} {

	    # get cell contents from list
	    set contents [lindex $line_lst $col]

	    # if is the first cell in line, don't append operator
	    if {$col != 0} {
		set expression [join [list $expression "(.|\\n)*"] ""]
	    }

	    # set expression
	    set expression [join [list $expression $contents] ""]
	}
    }

    return $expression
}



# Return search command line.
proc app_get_command_line {} {

    # define regular expression
    set search_exp " -e \"[app_build_regexp]\""

    # define options

    set op_lst [app_get_data 2]

    set do_preprocess [lindex $op_lst 0]
    set preprocess_lst [lindex $op_lst 9]
    set preprocess ""
    if {$do_preprocess == 1} {  # if must search inside preprocessable files
	foreach el $preprocess_lst {
	    set f_mask [lindex $el 0]
	    set app_as [lrange $el 1 end]
	    set preprocess [join [list $preprocess " -x \"" $f_mask "\" \"" $app_as "\""] ""]
	}
    }

    set do_translate [lindex $op_lst 1]
    set translate ""
    if {$do_translate == 1} {
	set translate " -w"
    }

    set do_cases [lindex $op_lst 2]
    set cases " -i"
    if {$do_cases == 1} {
	set cases ""
    }

    set do_subdirs [lindex $op_lst 3]
    set subdirs ""
    if {$do_subdirs == 1} {
	set subdirs " -r"
    }

    set do_text_only [lindex $op_lst 4]
    set text_only ""
    if {$do_text_only == 1} {
	set text_only " -T"
    }

    set where " -m[lindex $op_lst 5]"

    set avoid_lst [split [lindex $op_lst 6] " "]
    set avoid_ms ""
    foreach el $avoid_lst {
	set avoid_ms [join [list $avoid_ms " -a \"" $el "\""] ""]
    }

    set def_cmd [lindex $op_lst 7]

    set temp_dir " -t \"[lindex $op_lst 8]\""

    set entries [app_get_data 1]
    set start_fs_entries " -s"
    foreach en $entries {
	set start_fs_entries [join [list $start_fs_entries " \"" $en "\""] ""]
    } 

    set cmd_line [join [list $def_cmd " " $translate $cases $text_only \
			$search_exp $where $subdirs $temp_dir $avoid_ms \
		        $preprocess $start_fs_entries] ""]

    return $cmd_line
}



# Return opened channeld id.
proc app_get_search_channel {} {
    global agl_search_res_channel
    return $agl_search_res_channel
}



# Does search acording the given expression and parameters.
# The regular expression is based on Perl sintax.
# output_win - output window for search results (during search)
# output_widget - text widget where put search output
# exec_cmd - the search command
# return 1 - ok / 0 - error while starting search
proc app_make_search {output_win output_widget exec_cmd} {

    global agl_search_res_channel
    global agl_search_res_win
    global agl_search_res_widget

    set agl_search_res_win $output_win
    set agl_search_res_widget $output_widget

    # open one channel for execution pipe
    set agl_search_res_channel ""
    catch { set agl_search_res_channel [open "|$exec_cmd" r] } out_msg
    if {$agl_search_res_channel == ""} {
	set err_msg "Search cann't be executed.\nThe fault cause can be identified bellow.\n\nMessage:\n$out_msg"
	tk_messageBox -icon error -type ok -parent . -title "Error" \
	    -message $err_msg
	return 0
    }

    # when data comes, insert in text box
    fileevent $agl_search_res_channel readable {

	# if input was ended
	if { [eof $agl_search_res_channel]} {

	    # close channel
	    close $agl_search_res_channel

	    iface_win_end_search $agl_search_res_win

	} else {
	
	    # get data
	    set data [gets $agl_search_res_channel]

	    # insert in result box
	    $agl_search_res_widget insert end "$data"
                               # text widget: "$data\n"
	    $agl_search_res_widget yview end

	    # update interface and read user input
	    update idletasks
	}
    }

    return 1
}



# Saves application data to file.
# fname - file name to store data
# return 1 - ok / 0 - error
proc app_save_file {fname} {

    global agl_data

    # write file (making compression)
    set chann ""
    catch {set chann [open "|gzip > \"$fname\"" w]} out_msg
    if {$chann == ""} {
	set err_msg "Was impossible save the file. The possible cause can be identified bellow.\n\nMessage:\n$out_msg"
	tk_messageBox -icon error -type ok -parent . -title "Error" \
	    -message $err_msg
	return 0
    }

    set vers [iface_get_file_version]
    puts $chann "$vers" 
    puts $chann "$agl_data" 
    close $chann
    return 1
}



# Loads application data from file.
# fname - file name to read
# return 1 - ok / 0 - error
proc app_read_file {fname} {

    global agl_data

    set chann ""
    catch {set chann [open "|gzip -d -c \"$fname\"" r]} out_msg
    if {$chann == ""} {
	set err_msg "Was impossible read the file.\nThe possible cause can be identified bellow.\n\nMessage:\n$out_msg"
	tk_messageBox -icon error -type ok -parent . -title "Error" \
	    -message $err_msg
	return 0
    }
	
    # verify if can read the file, versions compatible
    set vers [iface_get_file_version]
    set fvers [gets $chann]
    if {$fvers != $vers} {
	set err_msg "Impossible read file.\nThe file is incompatible with the ones suported by this programm."
	tk_messageBox -icon error -type ok -parent . -title "Error" \
	    -message $err_msg
        close $chann
        return 0
    }
    
    # read
    set agl_data [gets $chann]
    close $chann

    return 1
}



# Export result to an external file
# file_name - export file name
# data_path - current data file name path
# data_name - current data file name (normaly something.flz)
# prog_name - the program name
proc app_export_result {file_name data_path data_name prog_name} {

    global agl_data

    # open file
    set chann ""
    catch {set chann [open "$file_name" w]} out_msg
    if {$chann == ""} {
	set err_msg "Was impossible export the result to the file. The possible cause can be identified bellow.\n\nMessage:\n$out_msg"
	tk_messageBox -icon error -type ok -parent . -title "Error - $prog_name" \
	    -message $err_msg
    }

    # define extension
    set ext [file extension $file_name]
    
    # acording extension export as HTML or TXT
    set export_html 0
    if {$ext == ".html" || $ext == ".htm"} {
	set export_html 1
    }

    # write to file

    if {$export_html == 1} {
	puts $chann "<html>\n"
	puts $chann "<HEAD><TITLE>Search Result</TITLE></HEAD>\n"
	puts $chann "<body>\n"
    }

    if {$export_html == 1} {
	puts $chann "<p><i>\n"
    }
    puts $chann "Result generated by the program $prog_name."
    if {$export_html == 1} {
	puts $chann "</i><p>\n"
    }

    if {$export_html == 1} {
	puts $chann "<p>\n"
	puts $chann "<i>"
    }
    puts $chann "File with the search specification: "
    if {$export_html == 1} {
	puts $chann "</i>"
    }
    if {$export_html == 1} {
	puts $chann "<p>\n"
    }
    puts $chann "$data_path/$data_name"
    if {$export_html == 1} {
	puts $chann "</p>\n"
    }
    if {$export_html == 1} {
	puts $chann "<hr>\n"
	puts $chann "<p><i><b>\n"
    }
    puts $chann "Result:"
    if {$export_html == 1} {
	puts $chann "</b></i><p>\n"
    }

    set the_result [app_get_data 3]

    #if {$export_html == 1} {
	#puts $chann "<p>\n"
    #}
    #set num [llength $the_result]
    #puts $chann "Found $num íte(m/ns)\n"
    #if {$export_html == 1} {
	#puts $chann "</p>\n"
    #}

    set is_first 0
    foreach el $the_result {

	if {$export_html == 1} {
	    puts $chann "<p>\n"
	    # REVIEW @@@
	    if {$is_first == 1} {
		puts $chann "<a href=\"$el\">"
	    }
	}

	puts $chann "$el\n"

	if {$export_html == 1} {
	    if {$is_first == 1} {
		puts $chann "</a>"
	    }
	    puts $chann "</p>\n"
   	    if {$el == "--- in:"} {
		set is_first 1
	    } else {
		set is_first 0
            }	
	}
    }

    if {$export_html == 1} {
	puts $chann "</body>\n"
	puts $chann "</html>\n"
    }

    close $chann
}



app_init
iface_init_session_data
iface_init_search_data

set use_gui 1
if {$argv == "--help"} {
  puts "$igl_prog_name $igl_prog_version"
  puts "Tool for search inside texts."
  puts "Use: [string tolower $igl_prog_name] \[--version --license\] \[file\]"
  puts "--license  show license"
  puts "--version  show version"
  puts "arquivo	   file (.flz) with the specification of the search to be loaded"
  set use_gui 0
} 

if {$argv == "--version"} {
  puts "$igl_prog_name $igl_prog_version"
  set use_gui 0
}

if {$argv == "--license"} {
  puts "$igl_prog_name $igl_prog_version"
  puts "Copyright (C) 2001, 2002 Leandro Bernsmüller"
  puts ""
  puts "This program is free software; you can redistribute it and/or modify"
  puts "it under the terms of the GNU General Public License as published by"
  puts "the Free Software Foundation; either version 2 of the License, or"
  puts "(at your option) any later version."
  puts ""
  puts "This program is distributed in the hope that it will be useful,"
  puts "but WITHOUT ANY WARRANTY; without even the implied warranty of"
  puts "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the"
  puts "GNU General Public License for more details."
  puts ""
  puts "You should have received a copy of the GNU General Public License"
  puts "along with this program; if not, write to the Free Software"
  puts "Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA"
  set use_gui 0
}

if { $use_gui == 1 } {
  app_load_default_data
  iface_build
  iface_read_file [lindex $argv 0]
} else {
  exit 0
}
