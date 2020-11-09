#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program !"

#constants
isPartTime=1;
isFullTime=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HOUR=20;
NUM_WORKING_DAYS=20;

#variables
totalEmpHr=0;
totalWorkingDays=0


while [ $totalEmpHr -lt $MAX_HRS_IN_MONTH ] && [ $totalWorkingDays -lt $NUM_WORKING_DAYS ]
do
	((totalWorkingDays++))
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
	totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$((totalEmpHr*$EMP_RATE_PER_HOUR))
