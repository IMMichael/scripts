#/bin/bash
files="$(du ~/temp/* |sort -rn|awk '{ print $2 }'|xargs)"
echo "$files"
for i in "${files[@]}"
do
	rm -f $i
done
