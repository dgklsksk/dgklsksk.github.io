#!/bin/bash

ROOT=./
HTTP="/"
OUTPUT="site-index.html" 

i=0
echo "<UL>" > $OUTPUT
filepath=./
#for filepath in `find "$ROOT" -maxdepth 1 -mindepth 1 -type d| sort`; do
#  path=`basename "$filepath"`
#  echo "  <LI>$path</LI>" >> $OUTPUT
  echo "  <UL>" >> $OUTPUT
  for i in `find "$filepath" -maxdepth 1 -mindepth 1 -type d| sort`; do
    file=`basename "$i"`
    echo "    <LI><a href=\"$path/$file/site-index.html\">$file</a></LI>" >> $OUTPUT
  done
  echo "  </UL>" >> $OUTPUT
#done
echo "</UL>" >> $OUTPUT
