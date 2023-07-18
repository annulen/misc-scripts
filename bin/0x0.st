#!/bin/sh
src='-;type=text/plain;charset=utf-8;filename=stdin.txt'
[ "$1" ] && src="$1"
curl -sF "file=@$src" https://0x0.st | tee /dev/stderr
