#!/bin/bash
currentpath=$(dirname "$(realpath -s "$0")")
$currentpath/build/tests/test01_proofOfWork/runTest
