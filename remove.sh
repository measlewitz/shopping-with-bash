itemToCrossOut="$1"
hasItem=""
remove=""

while read p; do
	if [ "$p" = $itemToCrossOut ]; then
		hasItem="y"
		break
	fi
done < list.txt

if [ "$hasItem" != "y" ]; then
	exit 1
fi

while [[ $remove != "y" && $remove != "n" ]]; do
	echo "Would you like to remove this item from the list? y/n"
	read input
	remove=$input
done

if [ $remove = "y" ]; then
	sed -i "/$itemToCrossOut/d" list.txt
	echo "Removed $itemToCrossOut"
fi
