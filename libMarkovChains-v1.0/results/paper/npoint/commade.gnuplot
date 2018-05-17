set terminal epslatex size 4,4 color colortext
set output 'npoints_1000000.tex'
set title '1000000 steps run'
#set style fill solid 1.0
set xrange [3:100];
set yrange [0:36]
set xlabel '$k$';
set ylabel 'number of vertices';
set ytics 0,4,36
plot 'npoint_100000.res' w boxes notitle;
