#! /usr/bin/env python

import sys, os

from PySlang import *

def set_main_colors():
    global CLR_MAIN_TEXT, CLR_MAIN_LABEL, CLR_MAIN_LABEL_HI, \
           CLR_MAIN_SELECTED, CLR_MAIN_SELECTED_HI, CLR_MAIN_DELIM, \
           CLR_FILL
    CLR_MAIN_TEXT, CLR_MAIN_LABEL, CLR_MAIN_LABEL_HI, \
                   CLR_MAIN_SELECTED, CLR_MAIN_SELECTED_HI, \
                   CLR_MAIN_DELIM, CLR_FILL = 0, 1, 2, 3, 4, 5, 6
    SLtt_set_color(CLR_MAIN_TEXT, '', 'yellow', 'blue')
    SLtt_set_color(CLR_MAIN_LABEL, '', 'white', 'blue')
    SLtt_set_color(CLR_MAIN_LABEL_HI, '', 'brightcyan', 'blue')
    SLtt_set_color(CLR_MAIN_SELECTED, '', 'brown', 'cyan')
    SLtt_set_color(CLR_MAIN_SELECTED_HI, '', 'yellow', 'cyan')
    SLtt_set_color(CLR_MAIN_DELIM, '', 'green', 'blue')
    SLtt_set_color(CLR_FILL, '', 'white', 'blue')

def alt_set(clr):
    return clr | 0x80

def fill_desktop():
    scrh, scrw =  cvar.SLtt_Screen_Rows, cvar.SLtt_Screen_Cols

    fill_line = map(None, [alt_set(CLR_FILL)] * scrw, chr(97) * scrw)
    for i in range(1, scrh-1):
        SLsmg_gotorc(i, 0)
        SLsmg_write_color_chars(fill_line)

def expand_clr_char(color, str, color_hi = None, hi_pos = -1):
    lst =  map(None, [color] * len(str), str)
    if hi_pos >= 0:
        c, ch = lst[hi_pos]
        lst[hi_pos] = color_hi, ch
    return lst

def show_stderr():
    SLsmg_suspend_smg()
    os.system('cat pyslang.err')
    key = SLkp_getkey()
    SLsmg_resume_smg()

def main():
    sl_init()

    set_main_colors()

    # fill_desktop()

    label = "Client's Name:"
    plabel = expand_clr_char(CLR_MAIN_LABEL, label, CLR_MAIN_LABEL_HI, 9)

    x0 = 3
    y0 = 3
    SLsmg_gotorc(y0, x0)
    SLsmg_write_color_chars(plabel)

    SLsmg_refresh()
    key = SLkp_getkey()

    text1_width = 50
    text1 = "John Johnson"
    ptext1 = expand_clr_char(CLR_MAIN_TEXT, text1) + \
             expand_clr_char(alt_set(CLR_MAIN_TEXT), [chr(126)] * (text1_width - len(text1)))

    SLsmg_gotorc(y0, x0 + len(label) + 1)
    SLsmg_write_color_chars(ptext1)

    label2 = "Another piece of text"
    plabel2 = expand_clr_char(CLR_MAIN_SELECTED, label2)

    yh = cvar.SLtt_Screen_Rows - 1
    SLsmg_gotorc(yh, 1)
    SLsmg_write_color_chars(plabel2)

    SLsmg_gotorc(yh, 1)
    olen, olst = SLsmg_read_raw(len(plabel2))
    print olen, len(olst), olst
    show_stderr()
    
    SLsmg_gotorc(y0+5, x0)
    SLsmg_write_raw(olst)

    SLsmg_gotorc(y0, x0 + len(label) + len(text1) + 1)
    
    SLtt_set_cursor_visibility(1)
    SLsmg_refresh()
    key = SLkp_getkey()
    sl_exit()

main()
