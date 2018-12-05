#!/bin/sh
RUNNING=`prlctl list | grep -v NAME |grep -o -E "\w+\d+$"`
for VM in $RUNNING
do
  ID=`prlctl snapshot-list "$VM" | grep -o -E "\*\{.*?\}" | grep -o -E "[a-z0-9-]+"`
  prlctl snapshot-switch "$VM" -i "$ID"
  #sleep 5
  #prlctl restart "$VM"
done
