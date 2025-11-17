itemToAdd="$1"
filteredItem="${itemToAdd//[[:space:]]/}"
if [ -z "$filteredItem" ]; then
	exit 1
fi
echo "$itemToAdd added to the list!"
echo $itemToAdd >> list.txt