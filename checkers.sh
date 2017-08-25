#!/bin/sh

while :
  do 
  arp -a > ./arp.txt
  result= diff -p ./old.arp.txt ./arp.txt
  if [ "$result" != "" ]; then
  echo "change"
  else
  echo "NOT"
  fi

  cat ./arp.txt > ./old.arp.txt
  sleep 1s
done
