#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
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
    } else {
        printf("hello, I am parent of %d (pid:%d)\n",rc, (int) getpid());
        // parent goes down this path (original process)
        //int wc = wait(NULL);
        //printf("hello, I am parent of %d (wc:%d) (pid:%d)\n",rc, wc, (int) getpid());
    }
    return 0;
}
