set terminal png;
set output 'results/paper/volume/volume_for_a_10000_steps_run.png';
set xrange [3:100];
set xlabel 'k';
set ylabel 'volume';
set title 'Mean volume of visited polygons in a 10000 steps run';
plot 'results/paper/volume/volume10000run.res' w boxes notitle;