#!/bin/sh

if [ $# -lt 2 ]
then
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]
then
    echo "$filesdir is not a directory"
    exit 1
fi

numfiles=$(find "$filesdir" -type f | wc -l)
nummatches=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $numfiles and the number of matching lines are $nummatches"
