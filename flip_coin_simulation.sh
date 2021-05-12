echo "---Flip the coin---"
#random_number=$(($RANDOM%2))

for ((i=0;i<20;i++))
do
random_number=$(($RANDOM%2))
if [ $random_number -eq 1 ]
then 
echo "Head"
else
echo "Tail"
fi
done
