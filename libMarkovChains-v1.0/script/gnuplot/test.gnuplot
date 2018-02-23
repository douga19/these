set terminal epslatex size 4,4 color colortext
set output '../../../MarkovChainTex/eng/results/volume1000.tex'
set title '1000 steps run'
#set style fill solid 1.0
set xrange [3:100];
set yrange [0:1600]
set xlabel '$k$';
set ylabel 'volume';
set ytics 0,200,1800
plot '../../results/paper/volume/volume1000run.res' w boxes notitle;
