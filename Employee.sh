#!/bin/bash -x

empRatePerHour=20
totalWorkingdays=20
empHrs=8;

	totalHours=$empHrs*$totalWorkingdays;
	salary=$(($totalHours*$empRatePerHour));
	echo "Employee Monthly wages : " $salary

