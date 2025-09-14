#include <stdio.h>

int main(int argc, char *argv[]) {
    if ( argc != 3 ) {
        printf("Incorrect amount of command line arguments!\n");
        return 1;
    }
    //TODO assume that the directory exists and write string input to absolute file path
    //./writer "$WRITEDIR/${username}$i.txt" "$WRITESTR"
    //TODO variable writefile that accepts first argument that is a full path to a file including the filename
    //TODO variable writestr that accepts second argument a text string which will be written to writefile
    //TODO Exit with value 1 error and print statements if any of the arguments are not specified
    //TODO Creates a new file with name and path writefile overwriting the existing file and creating the path if it doesn't exist

    //TODO Write content writestr into writefile

    //TODO Exits with value 1 and error print statement if the file could not be created
    for (int i=1; i<argc; i++) {
        printf("%d:%s\n", i, argv[i]);
    }
    return 0;
}