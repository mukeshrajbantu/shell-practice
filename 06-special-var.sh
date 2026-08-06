#!/bin/bash
$@ #all variables passed to the script, in shell variables start with "$".
######## Special Vars #########
echo "All variables passed to script: $@"
echo "Number of variables passed: $#"
echo "First variable: $1"
echo "Last variable: $n"
echo "Script name: $0"