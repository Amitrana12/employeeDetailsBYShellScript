#!/bin/bash -x

#constant
EMP_RATE_PER_HR=20
DAYS_IN_MONTH=20
MAX_HRS_IN_MONTH=100

isPresentFullTime=1
isPresentPartTime=2
ays=0
hours=0
function getWorkHr() {
		local empCheck=$1

		if [ $empCheck -eq $isPresentFullTime ]
		then
				empHr=8
		elif [ $empCheck -eq $isPresentPartTime ]
		then
				empHr=4
		else
				empHr=0
		fi
		echo $empHr
}
while [[ $days -ne $DAYS_IN_MONTH && $hours -le $MAX_HRS_IN_MONTH ]]
do
		((days++))
		empCheck=$((RANDOM%3))
		empHr="$( getWorkHr $empCheck)"
		hours=$(($hours+$empHr))

done
empMonthWage=$(($hours*$EMP_RATE_PER_HR))
echo $empMonthWage
