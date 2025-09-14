#include <stdio.h>

int main(int argc, char *argv[]) {
    if ( argc != 3 ) {
        printf("Incorrect amount of command line arguments!\n");
        return 1;
    }
    //TODO assume that the directory exists and write string input to absolute file path
    for (int i=1; i<argc; i++) {
        printf("%d:%s\n", i, argv[i]);
    }
    return 0;
}