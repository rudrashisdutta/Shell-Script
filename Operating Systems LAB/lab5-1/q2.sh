echo "Enter coeff. of x^2: "
read a
echo "Enter coeff. of x: "
read b
echo "Enter constant: "
read c
d=$(echo "$b * $b - $4 * $a * $c" | bc)
mb=$(echo "(-1 * $b)" | bc)
x=`echo "scale=4; sqrt($d)" | bc`
x=$(echo "$x / (2 * $a)" | bc)
r1=$(echo "mb + $x" | bc)
r2=$(echo "mb - $x" | bc)
echo "Roots are $r1 and $r2"
