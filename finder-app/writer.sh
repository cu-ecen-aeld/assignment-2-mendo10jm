#!/bin/sh

if [ "$#" -lt  "2" ]
   then
     echo "No arguments supplied"
     exit 1
fi
if [ -e $1 ]; then
 echo "File exist"
 exit 1
else
 mkdir -p "$(dirname $1)"
fi

echo $2 > $1

