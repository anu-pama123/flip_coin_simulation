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
if [ $head_count -eq 21 ] || [ $tail_count -eq 21 ]
then
echo "limit reached"
echo "Head="$head_count"times"
echo "Tail="$tail_count"times"
if [ $head_count -eq 21 ]
then
result=$(($head_count - $tail_count))
echo "Head won by $result"
else
result1=$(($tail_count - $head_count))
echo "Tail won by $result1"
fi
break
fi
done

