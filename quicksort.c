#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void combinations(int size, FILE *output);
void quicksort(int *vet, int esq, int dir);

int main(int argc, char **argv){
    
    if(argc == 2){
        int i, j = 0, num = 0;
        int size = atoi(argv[1]);
        int *array;
        
        // Opening archives
        FILE *archive = fopen("combinations.txt","w+");
        FILE *quickout = fopen("quicksort.txt","w");

        array = (int*) calloc(size,sizeof(int));

        printf("Step 1. Generating all combinations on %d-size lists ...", size);
        clock_t start = clock();
        combinations(size, archive);
        clock_t end = clock();
        float seconds1 = (float)(end - start) / CLOCKS_PER_SEC;
        printf("done! Time: %f s\n",seconds1);
        rewind(archive);
        
        // Read each row and put in array to sort
        printf("Step 2. Running Quicksort on each combinations.txt row ...");
        clock_t start2 = clock();
        fscanf(archive,"%1d", &num);
        while(!feof(archive)){
            if(j < size){
                array[j++] = num;
                fscanf(archive,"%1d", &num);
            }else{
                quicksort(array,0,size-1);
                for(i = 0; i < size; i++){
                    fprintf(quickout,"%d ", array[i]);
                }
                fprintf(quickout,"\n");
                j=0;
            }
        }
        quicksort(array,0,size-1);
        for(i = 0; i < size; i++){
            fprintf(quickout,"%d ", array[i]);
        }
        fprintf(quickout,"\n");
        clock_t end2 = clock();
        float seconds2 = (float)(end2 - start2) / CLOCKS_PER_SEC;
        printf("done! Time: %f s\n",seconds2);
        printf("Total execution time: %f s\n", seconds2+seconds1);
        
        // Closing archives
        fclose(archive);
        fclose(quickout);
        
        // Free memory
        free(array);
    }else{
        printf("Please, execute: %s size\n", argv[0]);
    }
    return 0;
}

void combinations(int size, FILE *output) {
    int i, *array, count = 0, limit = 1;
    array = (int*) calloc(size,sizeof(int));
    
    // Init
    for(i = 0;i<size;i++){
        limit *= size;  // Number of combinations is n^n
        array[i] = 1;   // Start array is [1,1,...,1];
        fprintf(output,"%d ",array[i]);    
    }
    fprintf(output,"\n");
    
    // Generate Combinations
    while(count != limit - 1){
        for(i = size-1; i>=0 ; i--){
            if(array[i] == size){
                array[i] = 1;
                if(array[i-1] + 1 > size ){
                    array[i-1] = size;
                }
            }else{
                array[i] += 1;
                break;
            }
        }
        for(i = 0;i<size;i++){
            fprintf(output,"%d ",array[i]);    
        }   
        fprintf(output,"\n");
        count++;
    }
    
    free(array);
}

void quicksort(int *vet, int esq, int dir){
    int pivo = esq,i,ch,j;
    for(i=esq+1;i<=dir;i++){
        j = i;
        if(vet[j] < vet[pivo]){
         ch = vet[j];
         while(j > pivo){    
            vet[j] = vet[j-1];
            j--;
         }
         vet[j] = ch;
         pivo++;        
        }  
    }
    if(pivo-1 >= esq){
        quicksort(vet,esq,pivo-1);
    }
    if(pivo+1 <= dir){
        quicksort(vet,pivo+1,dir);
    } 
}