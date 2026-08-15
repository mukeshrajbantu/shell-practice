#!/bin/bash

# TIMESTAMP=$(date)  #here date is command and TIMESTAMP is variable.

# echo "Time is: $TIMESTAMP"

START_TIME=$(date +%s)
sleep 10


END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))
echo "Script execution is : $TOTAL_TIME seconds."