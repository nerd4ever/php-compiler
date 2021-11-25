#!/bin/sh
set -e

fn_versions(){
    whereis phpize | xargs -n1 | egrep ".phpize[0-9]." | awk -F 'phpize' '{print $2}'
}
case "$1" in
    versions)
        fn_versions
        ;;
    *) 
        echo "Command $1 is not supported!" 
        ;;
esac