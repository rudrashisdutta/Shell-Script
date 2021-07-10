echo "Mark 1?"
read mark1
echo "Mark 2?"
read mark2
echo "Mark 3?"
read mark3
echo "Mark 4?"
read mark4
total=`expr $mark1 + $mark2 + $mark3 + $mark4`
per=`expr $total / 4`
echo "Percentage:\t$per%"
if [ $per -ge 90 -a $per -le 100 ]
then
echo "Grade:\tO"
elif [ $per -ge 80 -a $per -le 90 ]
then
echo "Grade:\tE"
elif [ $per -ge 40 -a $per -le 80 ]
then
echo "Grade:\tB"
else
echo "Grade:\tFAIL"
fi
