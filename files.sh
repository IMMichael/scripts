#/bin/bash
i=10
while (( "$i" > 0 ))
do
	echo "crap">>~/temp/file$i
	let i-=1
	echo $i
	read
done
