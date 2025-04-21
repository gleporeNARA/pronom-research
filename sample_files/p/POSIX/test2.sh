#!/bin/sh

#
# Running 
#  1) FCT-2-1 (dx^2, dt)
#  2) FCT-4-1 (dx^4, dt)
# methods to compare them
#

# 1) FCT-2-1 (dx^2, dt)
cat 0.in 2/in | ./zalesak > 2/0.out
cat 1.in 2/in | ./zalesak > 2/1.out
cat 2.in 2/in | ./zalesak > 2/2.out
cat 3.in 2/in | ./zalesak > 2/3.out

# 2) 2) FCT-4-1 (dx^4, dt)
cat 0.in 4/in | ./zalesak > 4/0.out
cat 1.in 4/in | ./zalesak > 4/1.out
cat 2.in 4/in | ./zalesak > 4/2.out
cat 3.in 4/in | ./zalesak > 4/3.out

# plotting data
gnuplot test2-plot

### end of "test2.sh" ### 