#!/bin/bash

set -e # ERR

trap 'echo "There an erro in $LINENO, Command: $BASH_COMMAND"' ERR

echo "Hello world"
echo "I am learning shell script"
echoo "Printing error here"
echo "No error in this"
