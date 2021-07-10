echo "What is the basic salary?"
read basicSalary
hra=$(echo "$basicSalary * 0.46" |bc)
da=$(echo "$basicSalary * 0.80" |bc)
totalSalary=$(echo "$basicSalary + $hra + $da" |bc)
echo "Total Salary:\t"$totalSalary
