#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHour=20

randomCheck=$((RANDOM%3))

case $randomCheck in
	$isFullTime)
		empHrs=8;
		salary=$(($empHrs*$empRatePerHour));
		echo "Employee FullTime wages : " $salary
		;;
	$isPartTime)
        	empHrs=4;
		salary=$(($empHrs*$empRatePerHour));
		echo "Employee PartTime wages : " $salary
		;;
	*)
		echo "Employee is absent"	
		;;
esac
