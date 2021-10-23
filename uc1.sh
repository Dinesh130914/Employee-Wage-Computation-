#!/bin/bash -x

ispresent=1;
randomcheck=$((RANDOM%2));

if [ $ispresent -eq $randomcheck ]
then
	emprateperhr=20;
	emphr=8;
	salary=$(($emphr*$emprateperhr));
else
	salary=0;
fi
