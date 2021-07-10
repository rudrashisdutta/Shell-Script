echo "What is the basic salary?"
read bs
x=1500
if [ $bs -lt $x ]
then
hra=$(echo "$bs * 0.1" |bc)
da=$(echo "$bs * 0.9" |bc)
else
hra=500
da=$(echo "$bs * 0.98" |bc)
fi
grossSalary=$(echo "$bs + $hra + $da" |bc)
echo "Gross Salary : $grossSalary"
