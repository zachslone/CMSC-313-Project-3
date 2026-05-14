Documentation to compile and execute the code

Compiling
gcc -o project3 project3.c

Compiling (optimization flags)
gcc -O0 -o project3_O0 project3.c
gcc -O1 -o project3_O1 project3.c
gcc -O3 -o project3_O3 project3.c

Generating the Optimized Assembly files
gcc -O0 -S -o project3_O0 project3.c
gcc -O1 -S -o project3_O1 project3.c
gcc -O3 -S -o project3_O3 project3.c

Running the program
./project3 <filename>
For this project we used ./project3 binary.out

