#!/bin/sh
RUNNING=`prlctl list | grep -v NAME | grep -o -E "\w+\d+$"`
for VM in $RUNNING
do
  prlctl snapshot $VM
done
