#/bin/bash
files="$(du ~/temp/* |awk '{ print $2 }')"
for i in "${files[@]}"
do
	rm -f $i
done
printf "Deleted:\n$files\n"
