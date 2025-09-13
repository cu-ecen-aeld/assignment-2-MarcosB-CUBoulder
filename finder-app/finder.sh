#!/bin/sh
# Description
# Author: Marcos Barrera

#DONE Accept $1 path to a directory runtime argument as filesdir
filesdir=$1
echo "Filesdir: ${filesdir}"
#DONE Accept $2 text string to search for as searchstr
searchstr=$2
echo "Searchstr: ${searchstr}"
#DONE Return value of 1 (error) and print statement if $1 or $2 were not specified
if [ -z "${filesdir}" ] || [ -z "${searchstr}" ]; then
  echo "failed: received filesdir:${filesdir} and searchstr:${searchstr}"
  exit 1
else
  exit 0
fi
#TODO Return value of 1 (error) if filesdir does not represent a directory

#TODO Prints message "The number of files are X and the number of matching lines are Y"
# X is the number of files in the directory
# Y is the number of matching lines found in the files where matching lines refers to a line contained within searchstr