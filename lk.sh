#!/bin/bash
#set -x
for i in $( ps aux |grep sleep| grep -v grep|awk '{ print $2 }' )
do 
	kill $i
done
