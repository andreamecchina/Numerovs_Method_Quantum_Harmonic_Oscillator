#Numerov's Method Quantum Harmonic Oscillator

Fortran 90 code is compiled using GNU Fortran version 10.2.0. All the bash scripts are executed with GNU bash, version 3.2.57. All the plots are realised using Gnuplot version 5.4.

The material in this directory is structured as follows:

+ *error*: for each test, stores computed energy eigenvalues.
+ *gnuplot*: stores Gnuplot scripts and the generated images.
+ *input*: stores input files with information described below.
+ *output*: in a subdirectory for each test, stores the wave function and other output information.
+ *report*: stores LaTex source files for the report slides.
+ *test*: stores Bash script for testing purposes.

Code interactively asks for input:

1. *Max value for x (typical value: 10)*.

2. *Number of grid points (typically a few hundreds)*.

3. *output file name.*

4. *Expansion order around inversion point (default 3).*

5. *Perturbative estimate energy gap? (1 for Yes).*

6. *nodes (type -1 to stop).*

7. *Trial energy (0=search with bisection).*

After one run, it is possibile to specify again 6. and 7., with the same values as before for the other parameters.

It is also possible to provide as arguments the same parameters:

+ *1st argument*: input file, providing 1., 2., 3., 6. and 7. 
+ *2nd argument*: expansion order around inversion point (default 3, accepts 2 and 4)
+ *3rd argument*: perturbative estimate energy gap? (1 for Yes, anything else for No)

The tolerance on the energy interval width is hardcoded and set, in adimensional units of energy, to $10^{-10}$. Using perturbative estimate for the energy gap, the tolerance on the energy gap width is also hardcoded to $10^{-10}$.