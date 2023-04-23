#!/bin/bash

for var in "$@"
do
    case $var in
        --date)
            date
            ;;
        --logs)
            for i in {1..100}
            do
                touch "log$i.txt"
                echo "log$i" >> "log$i.txt"
                echo "skrypt.sh" >> "log$i.txt"
                date >> "log$i.txt" 
            done
    esac 
done
