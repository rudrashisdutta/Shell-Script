echo "Enter the unit: "
read unit
bill=0
case $unit in
[0-200]*) bill=$(echo "200 * 0.65" | bc);;
[201-400]*) bill=$(echo "200 * 0.65" | bc)
exbill=$(echo "$(echo "$unit - 200" | bc) * 0.8" | bc)
bill=$(echo "$bill + $exbill" | bc);;
[401-900]*) bill=$(echo "200 * 0.65" | bc)
exbill=$(echo "$((unit-200)) * 0.8" | bc)
exbill2=$(echo "$((unit-400)) * 0.95" | bc)
bill=$(echo "$bill + $exbill + $exbill2" | bc);;
esac
echo "Bill=$bill paise"
