#!/bin/bash

START_TIME=$(date +%s)
# START_TIME is a variable amd s = seconds or start time

sleep 10 #this is for the progarm execution
END_TIME=$(date +%s)

TOTAL_TIME=$((END_TIME-START_TIME))
#bracket 1st is for arthimatical operaions 
#bracket 2nd is for execution after that to give the value to the variable $TOTAL_TIME.
echo "script executed is $TOTAL_TIME seconds"