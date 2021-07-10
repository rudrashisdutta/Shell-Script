echo -n "Enter the file names: "
read filenames
filename=($filenames)
numberoffiles=${#filename[@]}
if [ $(echo "$numberoffiles % 2" | bc) -eq 0 ]
then
echo "POSSIBLE!"
nodt=$(echo "$numberoffiles / 2" | bc)
for (( i=0; i<$nodt; i++ ))
do
j=$(echo "$numberoffiles - $i -1" | bc)
cat ${filename[i]} > ${filename[j]}
done
echo "COPIED!"
else echo "ERROR! ODD NUMBER OF FILES ENTERED!"
fi
