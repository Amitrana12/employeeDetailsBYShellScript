#!/bin/bash -x
#constant
EMP_RATE_PER_HR=20
DAYS_IN_MONTH=20
MAX_HRS_IN_MONTH=100

empCheck=$((RANDOM%3))
isPresentFullTime=1
isPresentPartTime=2
empMonthWage=0
days=0
hours=0

while [[ $days -ne 20 && $hours -le 100 ]]
do
		((days++))
		empCheck=$((RANDOM%3))
		empHr="$( getWorkHr $empCheck)"
		hours=$(($hours+$empHr))

done

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
empMonthWage=$(($hours*$EMP_RATE_PER_HR))
echo $empMonthWage
