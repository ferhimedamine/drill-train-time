#!/bin/bash

python app.py > web.log &
./get-feed.sh > feed.log &
