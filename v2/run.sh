#!/bin/bash

function prompt {
    yes="y"
    read -s yes
    yes=${yes:-y}
}

reset
echo "[[ Functions and variables ]]"
prompt


reset
echo ""
echo "Here is our script..."
echo "===================="
source-highlight -fesc -oSTDOUT -i test.sh
echo "===================="
prompt

reset
echo "First we run ./test.sh"
prompt

echo "===================="
./test.sh
echo "===================="

prompt
reset

echo "Lexical scoping & param handling"
echo "===================="
grep -A 2 'msg="Boo' test.sh | source-highlight -fesc -s bash -oSTDOUT
echo "===================="
grep -A 14 'function verbose' test.sh | source-highlight -fesc -s bash -oSTDOUT
echo "===================="

prompt
reset
