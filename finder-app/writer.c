#include <stdio.h>

int main(int argc, char *argv[]) {
    if ( argc != 2 ) {
        printf("No command line arguments!\n");
        return 1;
    }
    //TODO assume that the directory exists and write string input to absolute file path
    printf("argv[1]: %s\n", argv[1]);
    return 0;
}