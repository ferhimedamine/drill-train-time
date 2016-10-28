#!/bin/bash

while(true)
do
  curl -s 'https://mnorth.prod.acquia-sites.com/wse/gtfsrtwebapi/v1/gtfsrt/84b0a82b4f111064fc6eabd723edbce9/getfeed' | jq '.entity[]' > feed.json
  RC=`echo $?`
  if [ ${RC} -eq 0 ]; then
     sleep 120
  else
     sleep 1
  fi
done
