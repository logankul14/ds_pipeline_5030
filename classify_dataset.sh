read -p "Enter a file name" file

count=$( wc -l < $file )

if (( count > 1000000 )); then
	echo " this is a high volume batch "
elif (( count > 50000 && count < 1000000 )); then
	echo " this is a standard batch "
else
	echo " this is a lightweight batch "
fi


