#!/bin/sh
PATTERN=$1
RUNNING=`prlctl list --all | grep -v NAME | grep -o -E "\w+$" | grep -E "$PATTERN"`
for VM in $RUNNING
do
  prlctl start $VM
done
