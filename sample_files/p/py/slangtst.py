#! /usr/bin/env python

from slang import *

def main():
    SLtt_get_terminfo()
    print SLang_init_tty(-1, 0, 0)
    print SLsmg_init_smg()
    print SLkp_init()
    print SLtt_set_cursor_visibility(0) # doesn't work on win32
    SLtt_set_mouse_mode(1,1)

    msg = "Hello, World!"
    x0 = 35
    y0 = 5
    SLsmg_draw_box(y0-1, x0-2, 3, len(msg) + 4)
    SLsmg_gotorc(y0, x0)
    SLtt_set_color(0, '', 'yellow', 'blue')
    SLtt_set_color(1, '', 'brown', 'cyan')
    SLtt_set_color(2, '', 'red', 'cyan')
    ilst = []
    for ch in range(ord('A'), ord('Z')+1):
        ilst.append(2 << 8 | ch)
    SLsmg_write_color_chars(ilst)
    # SLsmg_set_char_set(1)
    # SLsmg_write_string(msg)
    SLsmg_refresh()
    key = SLkp_getkey()
    SLsmg_set_color_in_region(1, y0, x0+7, 1, 5)
    #SLsmg_gotorc(6, 44)
    #SLsmg_draw_hline(16)
    #SLsmg_gotorc(5, 44)
    #SLsmg_draw_vline(2)
    print '------'
    SLsmg_refresh()
    to_continue = 1
    while to_continue:
	key = SLkp_getkey()
	print key
	to_continue = SLang_input_pending(0)
    
    SLsmg_suspend_smg()
    key = SLkp_getkey()
    SLsmg_resume_smg()
    
    print '------'
    print SLtt_set_cursor_visibility(1) # doesn't work on win32
    SLsmg_reset_smg();
    SLang_reset_tty();
    ##print key

main()
