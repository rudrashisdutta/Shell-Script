echo -n "Enter a number: "
read x
i=1
c=0
while [ $i -le $x ]
do
if [ $(echo "$x % $i" | bc) -eq 0 ]
then
c=$(echo "$c + 1" | bc)
fi
i=$(echo "$i + 1" | bc)
done
echo $c
if [ $c -le 2 ]
then
echo "$x is prime"
else
echo "$x is not prime"
fi
