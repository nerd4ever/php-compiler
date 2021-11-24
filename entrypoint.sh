#!/bin/sh
set -e

fn_start(){
    echo "Starting nerd4ever/php-compiler ..."
    tail -f /var/log/lastlog
}
fn_versions(){
    whereis phpize | xargs -n1 | egrep ".phpize[0-9]." | awk -F 'phpize' '{print $2}'
}
case "$1" in
    start) 
        fn_start
        ;;
    versions)
        fn_versions
        ;;
    *) 
        if [ -z "$1" ]; then 
            fn_start
        else 
            echo "Command $1 is not supported!" 
        fi 
        ;;
esac