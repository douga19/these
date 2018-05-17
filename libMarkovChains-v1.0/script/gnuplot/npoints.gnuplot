set terminal postscript eps size 5,5 enhanced color font 'Helvetica,14' linewidth 2.5
set output '../../results/paper/npoint.eps'

#linecolor
#set style line 1  lc rgb '#0025ad' lt 1 lw 1.5 # --- blue
#set style line 2  lc rgb '#f44336' lt 1 lw 1.5 # --- red
#set style line 3  lc rgb '#4caf50' lt 1 lw 1.5 # --- green

set style line 1  lc rgb '#0025ad' pt 7
set style line 2  lc rgb '#f44336' pt 7
set style line 3  lc rgb '#4caf50' pt 7

#set style line 1 lc rgb 'black' pt 5   # square
#set style line 2 lc rgb 'black' pt 7   # circle
#set style line 3 lc rgb 'black' pt 9   # triangle


set title 'Average volume of a polygon in a long run'
set xrange [3:100]
set yrange [0:36]
set xlabel '{/Helvetica k}'
set ylabel '{/Helvetica number of vertices}'
set ytics 0,4,36
plot '../../results/paper/npoint/npoint_1000.res' w d ls 1 title '1000 steps', '../../results/paper/npoint/npoint_10000.res' w d ls 2 title '10000 steps', '../../results/paper/npoint/npoint_100000.res' w d ls 3 title '100000 steps'
