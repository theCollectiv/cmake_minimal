#!/bin/bash
#currentPath=$(dirname (realpath ($0)))`
currentPath=$(dirname "$(realpath -s "$0")")
cmake -S $currentPath -B $currentPath/build/ && make -C $currentPath/build/
