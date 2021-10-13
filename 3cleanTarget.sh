#!/bin/bash
currentpath=$(dirname "$(realpath -s "$0")")
rm -rf $currentpath/build/* && echo 'build nun clean'
