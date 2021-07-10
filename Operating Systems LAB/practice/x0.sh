c='A'
for (( i=0; i<10; i++ ))
do
c=$(echo "$c + 1" | tr "a-z" "A-Z")
echo $c
done
