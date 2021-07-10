x=10
echo "All even numbers from 10 to 1 are: "
while [ $x -gt 1 ]
do
echo $x
x=$(echo "$x - 2" | bc)
done
