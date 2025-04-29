#! /usr/bin/env python

from PySlang import *

def demo():
    sl_init()

    SLtt_set_color(0, '', 'yellow', 'blue')

    msg = "Press a key, Enter to finish:"
    x0 = 3
    y0 = 5
    x1 = x0 + len(msg) + 1
    SLsmg_draw_box(y0-1, x0-2, 3, len(msg) + 10)
    SLsmg_gotorc(y0, x0)
    SLsmg_write_string(msg)
    SLsmg_refresh()

    while 1:
        key = SLkp_getkey()
        while key == 65535:
            key = SLkp_getkey()
        SLsmg_gotorc(y0, x1)
        SLsmg_write_string('     ')
        SLsmg_gotorc(y0, x1)
        SLsmg_write_string(`key`)
        SLsmg_refresh()
        if key == 13:
            break

    sl_exit()

demo()
