#!/bin/bash

for var in "$@"
do
    case $var in
        --date)
            date
            ;;
    esac 
done
echo 'outside'
