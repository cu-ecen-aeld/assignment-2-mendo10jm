#!/bin/sh

if ! [ -d "$1" ]
 then
  echo "is not filesystem"
  exit 1
fi

if [ "$#" -lt  "2" ]
   then
     echo "No arguments supplied"
     exit 1
fi

result=$(grep -c -R $2 $1 | wc -l)
echo "The number of files are $result and the number of matching lines are $result"
