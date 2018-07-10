#!/bin/bash
#set -x
if [ "$#" -lt 2 ]; then
    printf "\nUsage: sendcommmand <command> <gw's list> [OPTION]\n\n"
    printf "  -s        -silent     Suppress all output from sent command(s)\n"
    printf "  -l        -log        Log all output of command(s) to <gw's list>.log file\n\n"
    exit 1
fi

ip_list="$2"
#cd /usr/local/bin/
while IFS= read line
do
        if [[ $3 = "-silent" ]] || [[ $3 = "-s" ]]; then
                 ssh admin@$line 'bash -s' < $1 >/dev/null 2>&1
                 echo "$line ==> Done"
        elif [[ $3 = "-log" ]] || [[ $3 = "-l" ]]; then
                date>>"$2".log
                echo $line>>"$2".log
                ssh admin@$line 'bash -s' < $1 >>"$2".log
                echo "$line ==> Done"
        else 
                ssh admin@$line 'bash -s' < $1
        fi
done < $ip_list
