#!/bin/bash
currentpath=$(dirname "$(realpath -s "$0")")
$currentpath/build/finalExecutable
