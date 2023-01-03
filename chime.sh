#!/bin/bash
# Triggered through Crontab every 30 minutes

minute=$((10#$(date +"%M")))
hour=$((10#$(date +"%I")))

echo "hour=$hour"
echo "minute=$minute"

if [[ $minute == 30 ]]
then
  aplay "30.wav"
elif [[ $minute == 15 ]]
then
  aplay "15.wav"
elif [[ $minute == 45 ]]
then
  aplay "45.wav"
elif [[ $minute == 0 ]]
then
  aplay "0.wav"
  x=$hour
  while (( $x > 0 )); do
    echo "Strike #$(( $hour - $x + 1 ))"
    aplay "strike.wav"
    let x=x-1
  done
else
  echo "Invalid time, not chiming"
fi

