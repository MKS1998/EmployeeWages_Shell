#! user/bin/bash     -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HR=0
totalWorkingHr=0
totalworkingday=0
totalsalary=0

function getworkingHr(){

        case  $empcheck  in
                $IS_PRESENT_FULL_TIME)
                     empHr=8 
			;;
                $IS_PRESENT_HALF_TIME)
                      empHr=4 
			;;
                *)
                       empHr=0 
			;;
        esac
        echo $empHr
}

function getEmpWage(){
	empHr=$empcheck
	echo $(( $empHr * $EMP_RATE_PER_HR ))
}


while [ $totalworkingday -le $MAX_WORKING_DAYS ] && [ $totalWorkingHr -lt $MAX_WORK_HR ]
do
	((totalworkingday++))
	empcheck=$((RANDOM%3))
	totalworkingHr=$(( $totalworkingHr + $empHr ))
	echo "Total Working Hours: " $totalWorkingHr
	dailywage[$totalworkingHr]=$(getEmpWage)
done

echo    "Daaily Wage"${dailywage[@]}
