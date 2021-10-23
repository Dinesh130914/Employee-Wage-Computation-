#!/bin/bash -x

isPartTime=1;
isFullTime=2;
maxHrsInMonth=100;
empRatePerHr=20;
NumWorkingDay=20;

totalEmpHr=0;
totalWorkingDay=0;

function getWorkingHrs( ) {
 case $1 in
        $isFullTime)
               workingHrs=8;
                ;;
        $isPartTime)
                workingHrs=4;
                ;;
         *)
                workingHrs=0
                ;;
 esac

}

while [[ $totalWorkingHrs -lt $maxHrsInMonth &&
                $totalWorkingDay -lt $NumWorkingDay ]]

do
   (( totalWorkingDay++ ))
   getWorkingHrs $((RANDOM%3))
   totalWorkingHours=$((totalWorkingHrs + workingHrs));
done
    totalSalary=$(($totalWorkingHours*$empRatePerHr));
[8:03 pm, 20/10/2021] Priyanga ❤️: this is UC 7
[8:03 pm, 20/10/2021] 💔Trustless Guy💔: Ok
[8:03 pm, 20/10/2021] Priyanga ❤️: i have shared the function program only
[8:04 pm, 20/10/2021] Priyanga ❤️: array program do u want ?
[8:04 pm, 20/10/2021] 💔Trustless Guy💔: yes
[8:04 pm, 20/10/2021] Priyanga ❤️: ok
[8:05 pm, 20/10/2021] Priyanga ❤️: #!/bin/bash -x

#constants
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=100;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#variables
totalEmpHr=0;
totalWorkingDays=0;

function getWorkHrs() {
        case $1 in
                $IS_FULL_TIME)
                        empHrs=8
                        ;;
                $IS_PART_TIME)
                        empHrs=4
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
}

function getEmpWage() {
        echo $(($1*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        getWorkHrs $empCheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
        dailyWages[$totalWorkingDays]=$(($empHrs*$EMP_RATE_PER_HR))
done

totalSalary="$( getEmpWage $totalEmpHr )"
