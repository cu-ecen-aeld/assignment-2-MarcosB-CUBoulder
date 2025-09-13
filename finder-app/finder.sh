#!/bin/sh
# Description
# Author: Marcos Barrera

#DONE Accept $1 path to a directory runtime argument as filesdir
filesdir=$1
#echo "Filesdir: ${filesdir}"
#DONE Accept $2 text string to search for as searchstr
searchstr=$2
#echo "Searchstr: ${searchstr}"
#DONE Return value of 1 (error) and print statement if $1 or $2 were not specified
countdirectoryfiles() {
  find ${filesdir} -type f | wc -l
}

countmatchinglines() {
  grep -r ${searchstr} ${filesdir} | wc -l
}

if [ -n "${filesdir}" ] && [ -n "${searchstr}" ]; then
  #echo "passed!"
  if [ -d "${filesdir}" ]; then
    echo "The number of files are $(countdirectoryfiles) and the number of matching lines are $(countmatchinglines)"
    exit 0
  else
    echo "Not a directory"
    exit 1
  fi
else
  echo "failed: received filesdir:${filesdir} and searchstr:${searchstr}"
  exit 1
fi
#DONE Return value of 1 (error) if filesdir does not represent a directory

#DONE Prints message "The number of files are X and the number of matching lines are Y"
#DONE X is the number of files in the directory
#DONE is the number of matching lines found in the files where matching lines refers to a line contained within searchstr