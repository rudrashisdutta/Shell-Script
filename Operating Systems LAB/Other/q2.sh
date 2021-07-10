echo "Value of n?"
read n
for (( i=$n; i>=1; i-- ))
do
for (( l=$i; l<$n; l++ ))
do
echo -n " "
done
for (( j=1; j<=$i; j++ ))
do
echo -n $j
done
p=$(echo "$i - 1" |bc)
for (( k=$p; k>=1; k-- ))
do
echo -n $k
done
echo ""
done
