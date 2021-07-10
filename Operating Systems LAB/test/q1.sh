echo "Press:"
echo "1: Contents of etc/passwd"
echo "2: List of users who have currently logged in"
echo "3: Present working directory"
echo "4: Exit"
echo "Your choice?"
read choice
if [ $choice -eq 1 ]
then
echo ""
elif [ $choice -eq 2 ]
then
echo ""
elif [ $choice -eq 3 ]
then
echo $PWD
else
echo ""
fi
