#!/bin/bash

#if [ $# != 3 ]
#then
#   echo "Less no of arguments provided"
#   exit 1
#fi

if [ -z "$1" ] || [ -z "$2" ]
then
   echo "No empty arguments please"
   exit 1
fi

#echo $1
#echo $2

writedir=$(dirname $1)
#echo "Dir name is $writedir"

if [ ! -d $writedir ]
then
   echo "writer.sh Creating directory"
   mkdir -p $writedir
fi
 
writefilestr=$1
writestr=$2


echo "$writestr" >> $writefilestr
 

exit 0
