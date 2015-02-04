#!/bin/bash
#
# a test script

function verbose {
    local msg=$1
    if [[ -n "$VERBOSE" ]]; then
        echo "$msg"
    fi
}

verbose "Let's get started!"

verbose "The current value of VERBOSE is $VERBSOE"

verbose "This script runs... yay!!!"

output=$(cat /foo)

verbose "All done!"
