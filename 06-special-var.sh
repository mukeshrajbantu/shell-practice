#!/bin/bash
$@ #all variables passed to the script, in shell variables start with "$".
######## Special Vars #########
echo "All variables passed to script: $@"
echo "Number of variables passed: $#"
echo "First variable: $1"
echo "Second variable: $2"
echo "Script name: $0"
echo "Who is running this: $USER"
