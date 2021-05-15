echo "1)21 times winning program of either head or tail  2)program for tie condition"
read -p "Enter your choice " choice
echo "---Flip the coin---"

case $choice in
1)
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
;;
esac

case $choice in
2)
head_count=0
tail_count=0
flag=0
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
echo "Head="$head_count
echo "Tail="$tail_count
echo "Number of head is equal to number of tail"
flag=0
continue
fi
if [ $flag ]
then
diff1=$(($tail_count-$head_count))
diff2=$(($head_count-$tail_count))
if [ $diff1 -eq 2 ] || [ $diff2 -eq 2 ]
then
break
fi
fi
done
;;
esac















