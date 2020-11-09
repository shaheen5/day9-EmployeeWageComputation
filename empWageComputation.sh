#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program !"

isPartTime=1;
isFullTime=2;
empRatePerHour=20;
totalSalary=0;
working_days_per_month=20;

for (( day=1 ; day <= $working_days_per_month ; day++ ))
do
	empCheck=$((RANDOM%3));
	case $empCheck in
	    $isFullTime)
		    empHrs=8
		    ;;
	     $isPartTime)
		    empHrs=4
		    ;;
	     *)
	      empHrs=0
		    ;;
	esac

	salary=$((empHrs*empRatePerHour));
	totalSalary=$((totalSalary+salary));
done
