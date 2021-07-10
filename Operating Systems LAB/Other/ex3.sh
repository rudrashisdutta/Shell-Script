echo -n "Enter the name of the file: "
read filename
filelist=`ls -l`

file=($filelist)
nof=${#file[@]}
j=-1
k=-1
echo ""
echo ""
for (( i=1; i<$nof; ))
do
if [ $filename == ${file[i]} ]
then
j=$(echo "$i - 8" | bc)
k=$i
break
fi
i=$(echo "$i + 9" | bc)
done

if [ $j -ne -1 ]
then
echo "DETAILS ABOUT FILE: $filename"
for (( i=j; i<=k; i++ ))
do
echo -n "${file[i]}  "
done
else echo "FILE NOT FOUND!"
fi

echo ""
echo ""
log=`who|wc -l`
echo "$log users are currently logged in."
