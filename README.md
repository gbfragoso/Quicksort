# Quicksort
This exercise aims to compare solutions of quicksort in C and Prolog in terms of execution time and descritive complexity.

# Compiling
> gcc -o quick quicksort.c

# Running
> PROLOG: Simply open quicksortX.pl and query "check." NOTE: You must has an combX.txt on same folder, where X is the size of array.

> C: ./quick X (Where X is the size of array)

# Comparison
![plot](/newplot.png)

# Conclusions
* In prolog implmetation, when user run quicksort7.pl or above the prolog give us the error "Out of local stack". (The line above 6-size represents an overflow)
* This comparison is not free, because the above languages do not run in same enviroment.
* The descritive complexity is almost the same but in C we have some more instructions.

