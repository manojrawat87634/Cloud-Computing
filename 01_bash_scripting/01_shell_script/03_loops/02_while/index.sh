read -p "Enter number : " num
res=1
while [ $num -gt 1 ] ;do
    res=$((res * num))
    num=$(( num - 1))
    done

echo $res