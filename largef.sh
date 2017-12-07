#!/bin/bash

liblist=$( du -cks /* --exclude=/proc/* |sort -n -r |head -5 |awk {'print $2'}|grep -v total )

#echo $liblist

echo "Large Directories:"

for arg in $liblist ; do
	du -hs $arg
done

