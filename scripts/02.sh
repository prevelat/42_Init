#!/bin/sh
if [ $(whoami) != "root" ]
then
	echo "BAD!! BAD USER!! NO DONUT FOR YOU!!" &&
		echo "Not gonna happen if you are not root!"
elif [ ! $1 ]
then
	echo "usage: [username]"
else
	deluser --force --remove-home $1
fi
