set terminal epslatex size 4,4 color colortext
set output '../../results/paper/volume/volume_10000.tex';
set title '10000 steps run'
set xrange [3:100];
set yrange [0:4500]
set xlabel '$k$';
set ylabel 'volume';
set ytics 0,500,4500
plot '../../results/paper/volume/volume10000run.res' w boxes notitle;
