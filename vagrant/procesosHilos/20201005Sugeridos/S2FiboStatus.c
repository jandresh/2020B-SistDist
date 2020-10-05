#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include "rand/maxrand.h"

int fibo(int f){
    if(f == 1) return 0;
    if(f == 2) return 1;
    return fibo(f-1) + fibo(f-2);
}
#define MAX 40
int main(int argc, char *argv[])
{
    int arreglo[MAX+1];
    printf("hello world (pid:%d)\n", (int) getpid());
    int rc = fork();
    if (rc < 0) {
        // fork failed; exit
        fprintf(stderr, "fork failed\n");
        exit(1);
    } else if (rc == 0) {
        // child (new process)
        printf("hello, I am child (pid:%d)\n", (int) getpid());
        int i;
        for (i=1; i <= MAX; i++) {
            arreglo[i-1] = fibo (i);
            if(i==MAX) {
                printf("Child calulate fibo[%d]=%d\n", MAX, arreglo[i-1]);
            }
        }
        //printf("Child calulate fibo[%d]=%d\n", MAX, arreglo[i-1]); 
        return maxrand(255);           
    } else {
        //printf("hello, I am parent of %d (pid:%d)\n",rc, (int) getpid());
        // parent goes down this path (original process)
        int status;
        int wc = wait(&status);
        printf("hello, I am parent of %d (wc:%d) (pid:%d)\n (WIFEXITED:%d) (WEXITSTATUS:%d)\n",
        rc, wc, (int) getpid(), (int) WIFEXITED(status),(int) WEXITSTATUS(status));
        //Exit status validation an print of exit status value
        if(WIFEXITED(status)==0){
            printf("child process terminated abnormally");
        }else {
            printf("child process terminated normally with exit status value of %d\n", (int) WEXITSTATUS(status));
        }
    }
    return 0;
}
