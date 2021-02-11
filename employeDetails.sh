#!/bin/bash -x
#constant
EMP_RATE_PER_HR=20


empCheck=$((RANDOM%3))
isPresentFullTime=1
isPresentPartTime=2

if [ $empCheck -eq $isPresentFullTime ]
then
		WORK_HR=8
elif [ $empCheck -eq $isPresentPartTime ]
then
		WORK_HR=4
else
		WORK_HR=0
		echo Employee is Absent
fi
salary=$(($WORK_HR*$EMP_RATE_PER_HR))
echo $salary
