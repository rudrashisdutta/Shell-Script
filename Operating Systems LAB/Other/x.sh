echo "Enter the value of N :"
read n
echo "Enter numbers : $n"
for(( i=0;i<n;i++ ))
do
read a[$i]
done
echo "Input array elements"
for(( i=0;i<n;i++ ))
do
echo "$((a[i]))"
done
for(( i=0;i<n;i++ ))
do
total=$(( total + a[i]))
done
average=`expr $total / $n `
echo "average of all input numbers : $average"
