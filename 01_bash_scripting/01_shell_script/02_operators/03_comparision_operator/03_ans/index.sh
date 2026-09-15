read -p "Enter year" year

if (( year % 4 == 0 )); then 
    echo "This is leap year"
else
    echo "this is not leap year"
fi