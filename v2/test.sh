#!/bin/bash
#
# a test script

VERBOSE="True"
msg="Boo"
name="green"

function color {
    local name=$1
    case $name in
        "red")
            echo -e "\033[31m"
            ;;
        "green")
            echo -e "\033[32m"
            ;;
        "yellow")
            echo -e "\033[33m"
            ;;
        "blue")
            echo -e "\033[34m"
            ;;
        "purple")
            echo -e "\033[35m"
            ;;
        "cyan")
            echo -e "\033[36m"
            ;;
        "lightred")
            echo -e "\033[1;31m"
            ;;
        "lightgreen")
            echo -e "\033[1;32m"
            ;;
        "lightyellow")
            echo -e "\033[1;33m"
            ;;
        "lightblue")
            echo -e "\033[1;34m"
            ;;
        "lightpurple")
            echo -e "\033[1;35m"
            ;;
        "lightcyan")
            echo -e "\033[1;36m"
            ;;
    esac
}

function verbose {
    local msg=$1
    local color=${2:-red}
    if [[ -n "$VERBOSE" ]]; then
        echo -e $(color $color) "$msg" "\033[0m"
    fi
}

verbose

verbose "Default param handling"

verbose "Printing in yellow" "yellow"

verbose "Printing in light purple" "lightpurple"

verbose "All done!"
