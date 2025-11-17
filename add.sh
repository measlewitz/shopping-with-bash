itemToAdd="$1"
filteredItem="${itemToAdd//[[:space:]]/}"
if [ -z "$filteredItem" ]; then
	exit 1
fi
echo $itemToAdd >> list.txt