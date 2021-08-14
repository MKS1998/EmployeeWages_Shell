#! user/bin/bash     -x

IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HR=100
totalWorkingHr=0
day=1
totalsalary=0
while [ $day -le $MAX_WORKING_DAYS ] && [ $totalWorkingHr -lt $MAX_WORK_HR ]
do
        ((day++))
	empCheck=$((RANDOM%3))

        case  $empCheck  in
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
        totalWorkingHr=$(( $totalWorkingHr + $empHr ))
	echo "totalWorkingHr: "$totalWorkingHr
done

totalSalary=$(( $totalWorkingHr * $EMP_RATE_PER_HR ))
echo "total Wages: " $totalSalary
