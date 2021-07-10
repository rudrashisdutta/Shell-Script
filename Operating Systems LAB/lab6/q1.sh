a=1
while [ $a -le 20 ]
do
echo $a
a=$(echo "$a + 1" | bc)
done
