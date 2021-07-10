echo -n "Enter a number: "
read num
rem=0
rev=0
n=$num
temp=$n
while [ $n -gt 0 ]
do
rem=$(echo "$n %10" | bc)
n=$(echo "$n / 10" | bc)
rev=$(echo "$rev * 10 + $rem" | bc)
done
if [ $temp -eq $rev ]
then
echo "$num is palindrome number"
else
echo "$num is not a palindrome number"
fi
