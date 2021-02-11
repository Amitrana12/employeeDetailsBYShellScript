#!/bin/bash -x
#constant
EMP_RATE_PER_HR=20


empCheck=$((RANDOM%3))
isPresentFullTime=1
isPresentPartTime=2

case $empCheck in
	$isPresentFullTime)
		WORK_HR=8
		;;
	$isPresentPartTime)
		WORK_HR=4
		;;
	*)
		echo Employee is Absent
		;;
esac
salary=$(($WORK_HR*$EMP_RATE_PER_HR))
echo $salary
