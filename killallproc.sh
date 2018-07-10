#/bin/bash
for value in $(  ps -A|grep sleep |grep -v grep|awk '{ print $1 }' )
do
	kill -9 $value
	echo "$value killed!"
done
echo "All Done!"
