#!/bin/sh
# Author: Marcos Barrera

#DONE variable writefile that accepts first argument that is a full path to a file including the filename
writefile=$1
#DONE variable writestr that accepts second argument a text string which will be written to writefile
writestr=$2
#DONE Exit with value 1 error and print statements if any of the arguments are not specified

if [ -n "${writefile}" ] && [ -n "${writestr}" ]; then
  #echo "passed!"
  if [ -d "$(dirname -- ${writefile})" ]; then
    echo "$(dirname -- ${writefile})"
    echo "${writestr}" > ${writefile}
    exit 0
  elif ! [ -d "$(dirname -- ${writefile})" ]; then
    mkdir $(dirname -- ${writefile})
    echo "${writestr}" > ${writefile}
    exit 0
  else
    echo "Error: File can not be created"
    exit 1
  fi

else
  echo "failed: received writefile:${writefile} and writestr:${writestr}"
  exit 1
fi

#DONE Creates a new file with name and path writefile overwriting the existing file and creating the path if it doesn't exist

#DONE Write content writestr into writefile

#DONE Exits with value 1 and error print statement if the file could not be created