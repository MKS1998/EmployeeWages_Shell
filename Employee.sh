#!/bin/bash -x

<<<<<<< HEAD
randomCheck=$((RANDOM%2))
=======
isFullTime=1
isPartTime=2
empRatePerHour=20

randomCheck=$((RANDOM%3))
>>>>>>> UC3_PartTimeEmpWages

if [ $randomCheck -eq 1 ]
then
	empHrs=8;
	salary=$(($empHrs*$empRatePerHour));
<<<<<<< HEAD
        echo "Employee Daily Wages : " $salary
else
	echo "Employee is absent"
=======
	echo "Employee FullTime wages : " $salary
elif [ $randomCheck -eq $isPartTime ]
then
        empHrs=4;
	salary=$(($empHrs*$empRatePerHour));
	echo "Employee PartTime wages : " $salary
else
	echo "Employee is absent"	
>>>>>>> UC3_PartTimeEmpWages
fi
