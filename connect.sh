#!/bin/bash
file=file
nl -ba  -nln  $file
count=$(cat $file | wc -l)
echo "choose a line from $count lines"
read site
if [ ${site} -le ${count} ];
then
        line=$(sed -n "${site}p" $file);
        echo "$line"
        $line
else
        echo " recheck your selection "

fi
