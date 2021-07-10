for (( i=0; i<100; i++ ))
do
if [ $(echo "$i % 2" | bc) -eq 0 ]
then
echo ".."
fi
done
