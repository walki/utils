#!/bin/bash

programname=$0

function usage {
    echo "usage: $programname file"
    echo "  file        open file in current code editor, creating if doesn't exist"
    exit 1
}

if [ "$1" != "" ]; then
    touch $1 && code -r $1
else
    usage
fi