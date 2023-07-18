#!/usr/bin/env bash

set -e

OUT_DIR=/mnt/storage/VSCode
URL='https://code.visualstudio.com/sha/download?build=stable&os=linux-x64'
TAR_FILE=./latest.tar.gz

curl -o $TAR_FILE -L "$URL"
tar xf $TAR_FILE -C $OUT_DIR
rm $TAR_FILE
