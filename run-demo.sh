#!/bin/bash

python app.py > web.log 2>&1 < /dev/null &
./get-feed.sh > feed.log 2>&1 < /dev/null &
