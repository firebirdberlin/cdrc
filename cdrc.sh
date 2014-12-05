#! /bin/bash

function _cdrc(){
    # action when directory is left
    if [ -f .cdrc_leave ]; then
        source .cdrc_leave
    fi;

    # change dir
    cd $1

    # action when entering directory
    if [ -f .cdrc_enter ]; then
        source .cdrc_enter
    fi;
}

alias cd=_cdrc
