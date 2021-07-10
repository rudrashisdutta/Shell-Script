echo -n "Enter the input file: "
read f
echo -n "Enter the output file: "
read f2
>$f2
text=$(cat $f)
arr=($text)
al=${#arr[@]}
i=0
while [ $i -le $al ]
do
echo "${arr[i]}" | rev >> $f2
echo "${arr[i]}" | rev
i=$(echo "$i + 1" | bc)
done
echo -e "Input file:\n\n"
cat $f
echo -e "\n\nOutput file:\n\n"
cat $f2
