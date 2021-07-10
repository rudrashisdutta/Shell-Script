echo "enter the number"
read num
for (( i=1 ; $i -ge $num ; i=(echo "$i + 1" |bc)))
do
for (( j=1 ; $j -ge $i ; j=(echo "$j + 1" |bc )))
do
echo "x"
done
done
