#!/bin/sh

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 [TEMPLATE] [NAME PATTERN] [COUNT]"
  exit 1
fi

PRL_TEMPLATE=$1
NAME=$2
LAST=$3

for SEQ in `seq $LAST`
do
  NEW_VM="$NAME$SEQ"
  prlctl clone "$PRL_TEMPLATE" --name="$NEW_VM" --regenerate-src-uuid
  prlctl start $NEW_VM
done
sleep 15
cat /etc/hosts | grep -o -E "10.211.*?\s"
