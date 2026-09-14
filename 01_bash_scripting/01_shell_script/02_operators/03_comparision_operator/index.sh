read -p "Enter your age: " age

if [ "$age" -lt 18 ]; then
    echo "you are not elegible for voting"
else
    echo "you are elegible for voting"
fi