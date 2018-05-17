set terminal postscript eps size 5,5 enhanced color font 'Helvetica,14' linewidth 2.5
set output '../../results/paper/npoint_lim.eps'

#linecolor
set style line 1  lc rgb '#0025ad' lt 1 lw 1.5 # --- blue
set style line 2  lc rgb '#f44336' lt 1 lw 1.5 # --- red
set style line 3  lc rgb '#4caf50' lt 1 lw 1.5 # --- green


set title 'Average number of vertices of a polygon in a 1000000 run compared with 2k^{2/3}'
set xrange [3:100]
set yrange [0:40]
set xlabel '{/Helvetica k}'
#set ylabel '{/Helvetica volume}'
set ytics 0,4,40
plot '../../results/paper/npoint/npoint_1000000.res' w l ls 1 title 'area', 2*x**0.66 w l ls 2 title '2k^{2/3}'
