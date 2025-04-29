#! /usr/bin/env python

from PySlang import *
import sys

def demo():
    sl_init()

    SLtt_set_color(0, '', 'yellow', 'blue')

    msg = "Press a key, Enter to finish:"
    x0 = 3
    y0 = 5
    x1 = x0 + len(msg) + 1
    SLsmg_draw_box(y0, x0, 15, len(msg) + 10)
    SLsmg_gotorc(y0 + 6, x0 + 1)
    SLsmg_draw_hline(20);
    SLsmg_gotorc(y0 + 7, x0 + 20)
    SLsmg_draw_vline(7)
    SLsmg_set_char_set(1)
    SLsmg_write_string(SLSMG_DTEE_CHAR)
    SLsmg_gotorc(y0 + 6, x0 + 20)
    SLsmg_write_string(SLSMG_URCORN_CHAR)
    SLsmg_gotorc(y0 + 6, x0)
    SLsmg_write_string(SLSMG_LTEE_CHAR)

    SLsmg_set_char_set(0)
    SLsmg_gotorc(y0 + 3, x0 + 7)
    SLsmg_write_string('Press a key to dismiss...')

    SLsmg_refresh()

    SLkp_getkey()

    sl_exit()

demo()
