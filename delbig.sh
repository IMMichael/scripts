#/bin/bash
#Uncomment and set below path for a pre-set directory.
# files="$(du ~/temp/* |sort -rn|head -n $1 |awk '{ print $2 }')"
files="$(du $1 |sort -rn|head -n $2 |awk '{ print $2 }')"
for i in "${files[@]}"
do
	rm -f $i
done
#files=$files|xargs
printf "Done :}\nDeleted:\n"
for i in "${files[@]}"
do
	printf "$i\n"
done

