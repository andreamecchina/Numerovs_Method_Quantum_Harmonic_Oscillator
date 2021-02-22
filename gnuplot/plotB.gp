reset
set key spacing 1.5
set xlabel '{/Symbol x}'
plot [-5:5][3.5:4] '../output/3/N_1600.dat' u 1:($3+3.5) w l title '{/Symbol r}_{quantum}({/Symbol x})' 
replot '../output/3/N_1600.dat' u 1:($4+3.5) w l dt 2 title '{/Symbol r}_{classic}({/Symbol x})'
replot '../output/3/N_1600.dat' u 1:5 w l title 'V({/Symbol x})={/Symbol x}^2/2'