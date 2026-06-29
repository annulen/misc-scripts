#!/bin/sh
exec xclip -sel clip -t text/html -o | pandoc -f html -t markdown_strict-raw_html --strip-comments | perl -pe 's{\Q![](data:image/\E\S+;base64,[^)]*\)}{}'
