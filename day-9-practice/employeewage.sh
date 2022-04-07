echo "Welcome to Employee Wage Computation";

echo " ";

get_working_hrs ()
{
emp_attendance=$(($1))
 case $emp_attendance in
  0)no_of_hrs_per_day=0
   ;;
  1)no_of_hrs_per_day=8
   ;;
  2)no_of_hrs_per_day=4
  ;;
esac
echo " "
echo "$no_of_hrs_per_day"
}

declare -A wage
wage_per_hr=20
max_hrs=100
max_days=20
total_working_hrs=0
total_working_days=0
total_wage=0
echo " "
echo "Day                              Dailywage                            Total wage"

while(( total_working_hrs < max_hrs && total_working_days < max_days ))
do
(( total_working_days++ ))
emp_attendance=$((RANDOM%3))
no_of_hrs_per_day=$(get_working_hrs $emp_attendance)
total_working_hrs=$((total_working_hrs+$no_of_hrs_per_day))
daily_wage=$(($no_of_hrs_per_day * $wage_per_hr))
total_wage=$((total_wage+$daily_wage))
wage[$total_wage]=$daily_wage

echo "Day${total_working_days}                              $daily_wage                                   $total_wage"
done
