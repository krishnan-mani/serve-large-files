#!/usr/bin/env bash

FILE_SIZE_IN_MB=$1
FILE_NAME=$2

echo "Generating file ${FILE_NAME} of size ${FILE_SIZE_IN_MB} MB"
dd if=/dev/zero of=${FILE_NAME} count=${FILE_SIZE_IN_MB} bs=1024
echo "done!"
