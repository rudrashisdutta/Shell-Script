echo "Which number do you want to check for?"
read number
rem=0
rev=0
n=$number
temp=$n
while [ $n -gt 0 ]
do
rem=$(echo "$n % 10" |bc)
n=$(echo "$n / 10" |bc)
rev=$(echo "$rev * 10 + $rem" |bc)
done
if [ $temp -eq $rev ]
then
echo $number" is a palindrome number."
else
echo $number" is NOT a palindrome number."
fi

n=$number
sum=0
k=$n
while [ $n -gt 0 ]
do
d=$(echo "$n % 10" |bc)
fact=1
i=1
while [ $i -le $d ]
do
fact=$(echo "$fact * $i" |bc)
i=$(echo "$i + 1" |bc)
done
sum=$(echo "$sum + $fact" |bc)
n=$(echo "$n / 10" |bc)
done
if [ $sum -eq $k ]
then
echo $number" is a strong number."
else
echo $number" is NOT a strong number."
fi


n=$number
q=$n
a=0
while [ $q -gt 0 ]
do
r=$(echo "$q % 10" |bc)
q=$(echo "$q / 10" |bc)
a=$(echo "$a + $r * $r * $r" |bc)
done
if [ $a -eq $n ]
then
echo $n" is an armstrong number."
else
echo $n" is not an armstrong number."
fi
