set terminal postscript eps size 5,5 enhanced color font 'Helvetica,14' linewidth 2.5
set output '../../results/paper/volume.eps'

#linecolor
set style line 1  lc rgb '#0025ad' lt 1 lw 1.5 # --- blue
set style line 2  lc rgb '#f44336' lt 1 lw 1.5 # --- red
set style line 3  lc rgb '#4caf50' lt 1 lw 1.5 # --- green


set title 'Average volume of a polygon in a long run'
set xrange [3:100]
set yrange [0:4500]
set xlabel '{/Helvetica k}'
set ylabel '{/Helvetica volume}'
set ytics 0,500,4500
plot '../../results/paper/volume/volume1000run.res' w l ls 1 title '1000 steps', '../../results/paper/volume/volume10000run.res' w l ls 2 title '10000 steps', '../../results/paper/volume/volume100krun.res' w l ls 3 title '100000 steps'
