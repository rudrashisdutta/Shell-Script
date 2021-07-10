echo "What is the number of units?"
read units
bill=0
if [ $units -le 200 ]
then
bill=$(echo "$units * 0.5" |bc)
elif [ $units -gt 200 ]
then
bill=$(echo "200 * 0.5" |bc)
units=$(echo "$units - 200" |bc)
if [ $units -le 200 ]
then
bill=$(echo "$bill + $units * 0.65" |bc)
elif [ $units -gt 200 ]
then
bill=$(echo "$bill + 200 * 0.65" |bc)
units=$(echo "$units - 200" |bc)
bill=$(echo "$bill + $units * 0.80" |bc)
fi
fi
echo "Final Charges:\t"$bill
