#!/bin/bash

function prompt {
    yes="y"
    read -s yes
    yes=${yes:-y}
}

echo "[[ Some useful shell scripting flags ]]"

export VERBOSE=1

echo ""
echo "Here is our script..."
echo "===================="
source-highlight -fesc -oSTDOUT -i test.sh
echo "===================="
prompt

echo "First we run ./test.sh"
prompt

echo "===================="
./test.sh
echo "===================="

prompt
reset

echo "Tracing: set -o xtrace"
echo "traces every operations that the bash script does, in gorry detail"
prompt

echo "===================="
bash -x ./test.sh
rc=$?
echo "===================="
echo "Return code: $rc"
prompt
reset

echo "Exit on error: set -o errexit"
echo "immediately exits script on first error"
prompt

echo "===================="
bash -ex ./test.sh
rc=$?
echo "===================="
echo "Return code: $rc"
prompt
reset

echo "Exit on unset var: set -o nounset"
echo "immediately exits script on touching an unset variable"
prompt

echo "===================="
bash -ux ./test.sh
rc=$?
echo "===================="
echo "Return code: $rc"
prompt

echo "You should use all of these in your scripts"
