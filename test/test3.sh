# compile and run
cd ..
gfortran harmonic.f90 -o harmonic.x

# create results directories
mkdir -p ./output/3
mkdir -p ./error

# create output energy file
echo "#N\texact\tcomputed" > ./error/global_error_3.dat

# cycle over input files
for filename in $(ls ./input | sort -n -t _ -k 2)
do
	# get the number of discretization points
	N=$(echo "$filename" | cut -c 3- | rev | cut -c 5- | rev)

	# get computed energy
	computed=$(./harmonic.x ./input/"$filename" 3 | tail -1 | cut -d " " -f 12)

	# write to energy file
	line="$N\t3.5\t$computed"
	echo $line >> ./error/global_error_3.dat

	# fix output file
	cp res* ./output/3/$filename
	rm res*

	# remove executable
	rm harmonic.x
done