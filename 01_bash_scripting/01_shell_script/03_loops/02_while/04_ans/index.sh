read -p "Enter number : " num
i=1
while [ $i -le $num ] ;do
    if [ $((i % 2 )) -ne 0 ]; then
        echo $i
    fi
    i=$(( i+1 ))
done