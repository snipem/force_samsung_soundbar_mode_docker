#!/bin/bash

# This works around a STUPID issue on Samsung TVs/soundbars which will always
# set the sound mode to Game and never switch it back when game mode is
# enabled once.
#
# This script just sets the sound mode to whatever you want every 2 seconds.
#
# 1. First connect your soundbar to your SmartThings account
# 2. Find your soundbar's device ID here: https://my.smartthings.com/advanced/devices
# 3. Generate a bearer token here: https://account.smartthings.com/tokens
# 4. Replace "adaptive sound" below with your desired sound mode
#
# Source: https://gist.github.com/coolbho3k/e61f1c5529363fca595ef13a41aef9f8

while true
do
  curl -s -X POST https://api.smartthings.com/v1/devices/${SOUNDBAR_DEVICE_ID}/commands \
          -H "Authorization: Bearer ${BEARER_TOKEN}" \
          -H "Content-Type: application/json" \
          -d '{"commands":[{"component":"main","capability":"execute","command":"execute","arguments":["/sec/networkaudio/soundmode",{"x.com.samsung.networkaudio.soundmode":"adaptive sound"}]}]}'
  sleep 2
done
