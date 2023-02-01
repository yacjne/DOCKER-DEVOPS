#!/bin/bash

network=185.171.202

for i in {1..254}; do
  ping -c 1 $network.$i > /dev/null
  if [ $? -eq 0 ]
  then
  echo $network.$i >> online.txt
  else
  echo $network.$i >> offline.txt
  fi
done

exit 0
