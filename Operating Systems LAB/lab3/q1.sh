echo "Enter a number:";
read number1;
echo "Enter another number:";
read number2;
sum=`expr $number1 + $number2`;
mul=`expr $number1 \* $number2`;
sub=`expr $number1 - $number2`;
div=`expr $number1 / $number2`;
mod=`expr $number1 % $number2`;
echo "Sum:\t"$sum"\nProduct: \t"$mul"\nDifference:\t"$sub"\nDivision:\t"$div"\nModulus:\t"$mod;
