#!/bin/bash

EXT=json

for x in $(ls); do
	arr=(${x//./ });
 [ ${arr[1]} == "sh" ] && continue;
 [ ${arr[1]} != $EXT ] && { 
	mv $x ${arr[0]}.$EXT;
	echo "Moved $x to ${arr[0]}.$EXT";
 };
done;