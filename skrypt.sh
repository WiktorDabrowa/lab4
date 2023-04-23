#!/bin/bash

for (( i=1; i<=$#; i++ )); do
    case "${!i}" in
        --date | -d)
            date
            ;;
        --logs | -l)
            next_arg=$((i+1))
            # check if next argument exist:
            if (( $next_arg <= $# ))
                then
                    # check if next argument is number:
                    if [[ "${!next_arg}" =~ ^[0-9]+$ ]];
                        then
                            # if it is a number run flag 
                            # with additional arguments
                            for (( i=1; i<=${!next_arg}; i++))
                            do
                                touch "log$i.txt"
                                echo "log$i" >> "log$i.txt"
                                echo "skrypt.sh" >> "log$i.txt"
                                date >> "log$i.txt"
                            done
                        else
                        # else run loop 100 times:
                            for i in {1..100}
                            do
                                touch "log$i.txt"
                                echo "log$i" >> "log$i.txt"
                                echo "skrypt.sh" >> "log$i.txt"
                                date >> "log$i.txt" 
                            done
                    fi
                else
                    # else run loop 100 times:
                    for i in {1..100}
                    do
                        touch "log$i.txt"
                        echo "log$i" >> "log$i.txt"
                        echo "skrypt.sh" >> "log$i.txt"
                        date >> "log$i.txt" 
                    done
            fi
            ;;
        --help | -h)
            echo 'Current flags:'
            echo ' --date | -d : display current date ';
            echo ' --logs | -l : ';
            echo '      - with integer argument: creates provided amount of log files';
            echo '      - without argument: creates 100 log files'
            echo ' --help | -h: this command'

            ;;
        --init | -i)
            cd repo;
            echo $PWD;
            repo_url="https://github.com/WiktorDabrowa/lab3";
            git clone "$repo_url" "$PWD";

    esac 
done
