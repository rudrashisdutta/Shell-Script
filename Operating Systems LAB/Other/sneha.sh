echo "Enter 3 numbers"
read a
read b
read c
if [ $a -lt $b ]
then
if [ $b -lt $c ]
then
echo "$c is the largest among the 3 numbers"
else
echo "$b is the largest among the 3 numbers"
fi
elif [ $a -lt $c ]
then
echo "$c is the largest among the 3 numbers"
else
echo "$a is the largest among the 3 numbers"
fi
