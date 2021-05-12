echo "---Flip the coin---"

head_count=0
tail_count=0
while [ 1 ]
do
random_number=$(($RANDOM%2))
if [ $random_number -eq 1 ]
then 
echo "Head"
((head_count++))
else
echo "Tail"
((tail_count++))
fi
if [ $head_count -eq $tail_count ]
then
echo "Limit reached"
echo "Head="$head_count"times"
echo "Tail="$tail_count"times"
break 
fi
done





