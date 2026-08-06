#!/bin/bash

NUMBER=$1
#-gt = greater than 
#-ge = greater than equal to
#-lt = less than
#-eq = equal 
#-ne = not equal
#-le = less than or equal to

if [ $NUMBER -ge 20 ]; then
    echo "Given number $NUMBER is greater than or equal to 20"
    else
    echo "Given number $NUMBER is less than 20"
fi

