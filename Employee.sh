#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHour=20

randomCheck=$((RANDOM%3))

if [ $randomCheck -eq $isFullTime ]
then
	empHrs=8;
	salary=$(($empHrs*$empRatePerHour));
	echo "Employee FullTime wages : " $salary
elif [ $randomCheck -eq $isPartTime ]
then
        empHrs=4;
	salary=$(($empHrs*$empRatePerHour));
	echo "Employee PartTime wages : " $salary
else
	echo "Employee is absent"	
fi
