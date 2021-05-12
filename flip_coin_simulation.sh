echo "---Flip the coin---"
for((i=0;i<20;i++))
do
random_number=$(($RANDOM%2))
if [ $random_number -eq 1 ]
then 
echo "Head"
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





