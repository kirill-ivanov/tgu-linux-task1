#! /bin/bash

echo "Input dir for remote file:"
read FILEPATH

find $FILEPATH -type f -mtime +5 -delete