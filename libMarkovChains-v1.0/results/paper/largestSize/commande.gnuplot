set terminal epslatex size 4,4 color colortext 10
set output 'comparison.tex'
set title 'Maximum number of vertices'
set xrange [3:100]
set yrange [0:80]
set xlabel '$k$'
set ylabel 'maximum number of vertices'
set ytics 0,5,80
plot 'largestSize_1000.res' u 1:2 w l title 'expected maximum number of vertices', \
    'largestSize_1000.res' u 1:3 w l title '1000 steps run', \
    'largestSize_10000.res' u 1:3 w l title '10000 steps run', \
    'largestSize_100000.res' u 1:3 w l title '100000 steps run'
