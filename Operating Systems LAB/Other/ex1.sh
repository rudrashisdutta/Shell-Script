echo -n "Enter the name of the file: "
read filename
ls -l $file

log=`who|wc -l`
echo "$log users are currently logged in."
