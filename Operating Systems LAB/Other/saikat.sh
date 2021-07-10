for (( i=1; i<50; i++ ))
do
x=$(echo "$i % 3" | bc)
if [ $x -eq 0 ]
then
echo "$i"
fi
done
