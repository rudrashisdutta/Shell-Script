echo -n "Enter a number: "
read num
n=$num
q=$n
a=0
count=0
while [ $q -gt 0 ]
do
count=$(echo "$count + 1" | bc)
q=$(echo "$q / 10" | bc)
done
echo $count
q=$n
while [ $q -gt 0 ]
do
r=$(echo "$q % 10" | bc)
q=$(echo "$q / 10" | bc)
i=1
x=$r
for (( i=1; i<$count; i++ ))
do
r=$(echo "$r * $x" | bc)
done
echo $r
a=$(echo "$a + $r" | bc)
done
if [ $a -eq $n ]
then
echo "$num is an armstrong number"
else
echo "$num is not an armstrong number"
fi
