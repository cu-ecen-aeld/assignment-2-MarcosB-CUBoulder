#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    if ( argc != 3 ) {
        syslog(LOG_ERR,"Incorrect amount of command line arguments: %d",argc);
        return 1;
    }

    //DONE assume that the directory exists and write string input to absolute file path
    //./writer "$WRITEDIR/${username}$i.txt" "$WRITESTR"
    //DONE variable writefile that accepts first argument that is a full path to a file including the filename
    FILE *writefile = fopen(argv[1], "w");
    char writestr[80 + 1];
    sprintf(writestr, "%s", argv[2]);
    fputs(writestr, writefile);
    fclose(writefile);
    //DONE variable writestr that accepts second argument a text string which will be written to writefile
    //DONE Exit with value 1 error and print statements if any of the arguments are not specified
    //DONE Creates a new file with name and path writefile overwriting the existing file and creating the path if it doesn't exist

    //DONE Write content writestr into writefile

    //DONE Exits with value 1 and error print statement if the file could not be created
    //TODO Ensure all error handling has been implemented for writer.c
    //DONE Ensure syslog logging is setup and working properly (you should see messages logged to /var/log/syslog on Ubuntu).
    return 0;
}