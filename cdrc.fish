#! /usr/bin/env fish

set -x LAST_KNOWN_PWD $PWD

function __check_current_pwd --on-variable PWD
    # action when directory is left
    if test -f $LAST_KNOWN_PWD/.cdrc_leave
        source $LAST_KNOWN_PWD/.cdrc_leave
    end

    # action when entering directory
    if test -f .cdrc
        source .cdrc
    else if test -f .cdrc_enter
        source .cdrc_enter
    end

    # store the current directory
    set -x LAST_KNOWN_PWD (echo $PWD)
end
