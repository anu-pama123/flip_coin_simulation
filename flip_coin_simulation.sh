echo "---Flip the coin---"
random_number=$(($RANDOM%2))
if [ $random_number -eq 1 ]
then 
echo "Head"
else
echo "Tail"
fi
