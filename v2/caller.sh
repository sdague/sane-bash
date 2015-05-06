#!/bin/bash

function die() {
  local frame=0
  while caller $frame; do
    ((frame++));
  done
  echo "$*"
  exit 1
}

function deep2 {
    die "zomg"
}

function deep1 {
    deep2
}

function main {
    deep1
}

main
