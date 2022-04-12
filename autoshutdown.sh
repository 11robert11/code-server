#!/bin/bash

fp=/config/.local/share/code-server/heartbeat
touch $fp


get_age () {
  return $(expr $(date +%s) - $(date +%s -r $1) )
}
age=0
while [ $age -le 120 ]
do
    get_age $fp
    age=$?
    sleep 5
done


echo "stopping";
#docker stop $(hostname)
