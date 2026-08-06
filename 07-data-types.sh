#!/bin/bash

NUM1=30
NUM2=30 #If LINUX given the number value would be 0.

SUM=$(($NUM1+$NUM2))
#one bracket for arthimetical operations and other once is to execute.
echo "Sum is: $SUM"
#Just variable name has been given.
#ARRAY
MOVIES=("RRR" "VARANASI" "PUSHPA") #index always starts from 0.
#movies is variable and the movie names are values.
#so the value's 1st position always starts from 0 = RRR and so on...
#The positionning would be done by zero but the number would start from 1,2,3..
echo "Movies are: ${MOVIES[@]}" #@ is for all
#The square braceses we can give positionig or indexing.
#to access all movies.
