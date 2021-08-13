#!/bin/bash -x

randomCheck=$((RANDOM%2))

if [ $randomCheck -eq 1 ]
then
	empRatePerHour=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHour));
        echo "Employee Daily Wages : " $salary
else
	echo "Employee is absent"
fi
