echo "Enter the value of 'a'";
read a;
echo "Enter the value of 'b'";
read b;
temp=$a;
a=$b;
b=$temp;
echo "After Swapping:\na= $a\nb= $b";
