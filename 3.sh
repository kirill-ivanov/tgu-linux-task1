#! /bin/bash
FILENAME=data3.txt

echo "Choose number line of file for print: "
read X

MAXLINE=$(grep -c $ ${FILENAME})
if [[ X -gt MAXLINE ]]
then
  echo "THIS LINE IS NOT FOUND. ALL COUNT LINES - ${MAXLINE}"
else
  echo $(cat ${FILENAME} | head -n${X} | tail -n1)
fi