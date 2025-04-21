#!/bin/sh

#
# Running 
#  1) donor cell (dx,   dt)
#  2) FCT-2-1    (dx^2, dt)
#  3) higher-order Godunov
# methods to compare between them
#
#

# 1) donor cell
cat 0.in 1/in | ./zalesak > 1/0.out
cat 1.in 1/in | ./zalesak > 1/1.out
cat 2.in 1/in | ./zalesak > 1/2.out
cat 3.in 1/in | ./zalesak > 1/3.out

# 2) FCT-2-1
cat 0.in 2/in | ./zalesak > 2/0.out
cat 1.in 2/in | ./zalesak > 2/1.out
cat 2.in 2/in | ./zalesak > 2/2.out
cat 3.in 2/in | ./zalesak > 2/3.out

#3) higher-order Godunov
cat 0.in pp/in | ./ppm > pp/0.out
cat 1.in pp/in | ./ppm > pp/1.out
cat 2.in pp/in | ./ppm > pp/2.out
cat 3.in pp/in | ./ppm > pp/3.out

#plotting data
gnuplot test1-plot

### end of "test.sh" ### 