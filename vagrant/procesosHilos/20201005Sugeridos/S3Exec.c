#include <unistd.h> // execvp()
#include <stdio.h>  // perror()
#include <stdlib.h> // EXIT_SUCCESS, EXIT_FAILURE

int main(int argc, char** argv) {
  char *cmd[argc];
  for(int i=1; i < argc; i++){
    cmd[i-1]=argv[i];
  }
  cmd[argc-1]=NULL;
  execvp(cmd[0], cmd);
  perror("Return from execvp() not expected");
  exit(EXIT_FAILURE);
}

