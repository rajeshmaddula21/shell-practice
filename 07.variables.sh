#!/bin/bash

## Special variables ##

echo "All args passed to the script:  $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running: $USER"
echo "Home directoty of current user: $HOME"
echo "PID of this script: $$"
sleep 100 &
echo "PID of recently excuted bacgroung process: $!"
echo "All args passedd to script: $*"