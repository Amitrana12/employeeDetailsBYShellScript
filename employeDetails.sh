#!/bin/bash -x
#constant
EMP_RATE_PER_HR=20
DAYS_IN_MONTH=20

empCheck=$((RANDOM%3))
isPresentFullTime=1
isPresentPartTime=2
empMonthWage=0
days=0
hours=0

while [[ $days -ne 20 && $hours -le 100 ]]
do
		empCheck=$((RANDOM%3))
		if [ $empCheck -eq $isPresentFullTime ]
		then
				empHr=8
		elif [ $empCheck -eq $isPresentPartTime ]
		then
				empHr=4
		else
				empHr=0
		fi
		hours=$(($hours+$empHr))
		((days++))

		empMonthWage=$(($empMonthWage+$empHr*$EMP_RATE_PER_HR))
done

echo $empMonthWage
