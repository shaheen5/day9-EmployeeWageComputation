#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program !"

isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
	empRatePerHour=20;
	empHrs=8;
	salary=$((empHrs*empRatePerHour));
else
	salary=0;
fi
