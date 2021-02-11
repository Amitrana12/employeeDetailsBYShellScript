#!/bin/bash -x

empCheck=$((RANDOM%2))
isPresent=1

case $empCheck in
	$isPresent)
		echo Employee is Present
		;;
	*)
		echo Employee is Absent
		;;
esac
