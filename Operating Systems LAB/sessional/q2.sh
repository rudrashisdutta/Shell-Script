echo -n "Enter the file name: "
read f
text=$(cat $f)
>$f
arr=($text)
al=${#arr[@]}
i=0
while [ $i -lt $al ]
do
echo -e "${arr[i]} \n" >> $f
i=$(echo "$i + 1" | bc)
done
cat $f
