reset
set key spacing 1.5
set xlabel '{/Symbol x}'
set ylabel '{/Symbol y}_3({/Symbol x})'
set samples 1000
psi_3(x) = (8*x**3-12*x)*exp(-x**2/2)/sqrt(48*sqrt(pi))
plot [0:5] psi_3(x) title 'exact'
replot '../output/3/N_400.dat' u 1:($2-$2-$2) w p ps 0.4 title 'N=400'