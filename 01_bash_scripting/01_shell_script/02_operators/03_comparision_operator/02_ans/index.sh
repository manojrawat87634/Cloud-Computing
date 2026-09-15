
# Check if the number is odd or even

read -p "Enter number : " number

if (( number % 2 == 0)); then 
    echo "Number is even"
else
    echo "number is odd"
fi