reset
set key spacing 1.5 left
set xlabel '{/Symbol D}{/Symbol x}'
set ylabel 'global error'
plot [][0:0.0000001] '../error/global_error_5.dat' u (10/$1):(abs($3-$2)) w lp pt 7 ps 0.5 title '|{/Symbol e}_{comp}-{/Symbol e}_3|'
replot x**4 title '{/Symbol D}{/Symbol x}^4'
replot x**5 title '{/Symbol D}{/Symbol x}^5'