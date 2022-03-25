#!/bin/sh

# If there are any arguements or not
if [ $# -eq 0 ];
then
    echo "No arguments supplied"
else
    
    # Passed arguement
    PASSED=$1
    
    # If arguement passed is accidentally a directory
    if [ -d "${PASSED}" ];
    then
        echo "$PASSED is a directory";
    else
    
    # If arguement passed is a file
    if [ -f "${PASSED}" ];
    then
        
        # Extracting lines from textfile
        # Counting lines
        LINES=$(cat $PASSED | wc -l)
        LINES=`expr $LINES + 1`
        
        # Looping through each line and using wget to fetch them
        i=1
        while [ $i -lt $LINES ]
        do
            URL=$(head $PASSED -n $i | tail -n 1)
            echo "$i : $URL"
            wget -c $URL -P ../data/extwget
            i=`expr $i + 1`
        done
    else
        
        # Wget on multiple arguements
        for n in $(seq 1 $#); do
            echo "Downloading: $1"
            wget -c $1 -P ../data/extwget
            shift
        done
    fi
fi
fi