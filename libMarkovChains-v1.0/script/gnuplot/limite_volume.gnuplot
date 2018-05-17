set terminal postscript eps size 5,5 enhanced color font 'Helvetica,14' linewidth 2.5
set output '../../results/paper/volume.eps'

#linecolor
set style line 1  lc rgb '#0025ad' lt 1 lw 1.5 # --- blue
set style line 2  lc rgb '#f44336' lt 1 lw 1.5 # --- red
set style line 3  lc rgb '#4caf50' lt 1 lw 1.5 # --- green


set title 'Average area of a polygon in a 1000000 run compared with 0.68k^2'
set xrange [3:90]
set yrange [0:4500]
set xlabel '{/Helvetica k}'
#set ylabel '{/Helvetica volume}'
set ytics 0,500,4500
plot '../../results/paper/volume/great_k_1Mrun.res' w l ls 1 title 'area', 0.68*x*x w l ls 2 title '0.68k^2'
