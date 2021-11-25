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
    versions)
        fn_versions
        ;;
    *) 
        fn_start
        ;;
esac