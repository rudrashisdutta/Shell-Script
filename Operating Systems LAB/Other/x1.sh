echo "Enter the number of elements :"
read n
echo "Input the array elements :"
for(( i=0; i<n; i++ ))
do
read a[$i]
done
large=$(( a[0] ))
small=$(( a[0] ))
for(( i=1; i<n; i++ ))
do 
if [ $(( a[i] )) -gt $large ]
then
large=$(( a[$i] ))
fi
if [ $(( a[i] )) -lt $small ]
then
small=$(( a[i] ))
fi
done
echo "The smallest element : $small"
echo "The largest element : $large"
