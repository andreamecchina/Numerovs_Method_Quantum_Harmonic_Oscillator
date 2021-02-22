cd ..

# greatest delta xi
a=$(cat ./error/global_error_5.dat | grep '400' |  head -1 | cut -f3)

# mid delta xi
b=$(cat ./error/global_error_5.dat | grep '800' | cut -f3)

# smallest delta xi
c=$(cat ./error/global_error_5.dat | grep '1600' | cut -f3)

# compute order
p=$(echo "l(($a-$b)/($b-$c))/l(2)" | bc -l)
echo "p = $p"