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
totalWorkingDays=0;
totalWage=0;

#function to get employee work hours
function getEmployeeWorkHours(){

case $1  in
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
echo $empHrs;

}


while [ $totalEmpHr -lt $MAX_HRS_IN_MONTH ] && [ $totalWorkingDays -lt $NUM_WORKING_DAYS ]
do
	((totalWorkingDays++));
	empHrs=$(getEmployeeWorkHours $((RANDOM%3)) );
	dailyWage=$((empHrs*EMP_RATE_PER_HOUR));
	dailyWageArray[$totalWorkingDays]=$dailyWage;
	totalEmpHr=$(($totalEmpHr+$empHrs));
	totalWage=$((totalWage+dailyWage));

done
echo "Total Wage:-"$totalWage
echo "Daily Wage Array Elements:-"${dailyWageArray[@]}
