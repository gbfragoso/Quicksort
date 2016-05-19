# Quicksort
This exercise aims to compare solutions of quicksort in C and Prolog in terms of execution time and descritive complexity.

# Compiling
> gcc -o quick quicksort.c

# Running
> PROLOG: Simply open quicksortX.pl and query "check." NOTE: You must has an combX.txt on same folder, where X is the size of array.

> C: ./quick X (Where X is the size of array)

# Input
* C: The input file is generated at execution time. 
* Prolog: We need to run "combXgenerator.pl" (where X is size of list, using "run." clause) before execution of "quicksortX.pl" or rename an file with all combinations of X numbers to combX.txt.  

# Comparison
![plot](/newplot(1).png)

### Notes
* The prolog line stops at size 6 because prolog give us error "Out of local stack" when we trying to sort the size 7 or above.

# Conclusions
* In prolog implmetation, when user run quicksort7.pl or above the prolog give us the error "Out of local stack". (The line above 6-size represents an overflow)
* This comparison is not free, because the above languages do not run in same enviroment.
* The descritive complexity is almost the same but in C we have some more instructions.

