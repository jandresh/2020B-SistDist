#include <unistd.h> // execlp()
#include <stdio.h>  // perror()
#include <stdlib.h> // EXIT_SUCCESS, EXIT_FAILURE

int main(void) {
  printf("A punto de correr ls\n");
  execlp("ls", "ls", "-l", NULL);
  perror("Return from execlp() not expected");
  printf("termino ls\n");
  exit(EXIT_FAILURE);
}
