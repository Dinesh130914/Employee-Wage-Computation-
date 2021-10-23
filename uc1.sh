#!/bin/bash
ispresnt=1;
randomcheck=$((RANDOM%2));

if [ $ispresnt -eq $randomcheck ]
then
	echo "Employee IS Present"
else
	echo "Employee Is Absent"
fi
