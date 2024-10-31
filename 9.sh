#! /bin/bash

find . -depth -type f -exec sh -c 'f="{}"; mv -- "$f" "${f%.*}_backup.${f##*.}"' \;