#!/bin/bash
# Script: Guest Post Footprint Checker
# Description: Checks a list of URLs or domains for known guest post footprints
# Author: infinitnet.io

# Define vars and functions
footprintsinput=footprints.txt
urlinput=`cat urls.txt`
output='output.csv'

# Clear output file
echo "URL,Footprints" > $output

# Loop through URLs & footprints
for url in $urlinput
do
  if curl -i --proto =http,https -L -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" $url | grep -o -i -f $footprintsinput
  then
    echo "$url,true" >> $output
    else
  echo "$url,false" >> $output
  fi
done

echo ""
echo "All done. Check $output"
exit 0
