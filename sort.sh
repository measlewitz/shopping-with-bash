sortMethod=""

while [[ $sortMethod != "a" && $sortMethod != "z" && $sortMethod != "s" ]]; do
	echo "Would you like to sort the list a-z, z-a, or by size? a/z/s"
	read input
	sortMethod=$input
done

if [ $sortMethod = "a" ]; then
	sort -o list.txt list.txt
	echo "Sorted list a to z!"
elif [ $sortMethod = "z" ]; then
	sort -r -o list.txt list.txt
	echo "Sorted list z to a!"
else
	awk '{ print length, $0 }' list.txt | sort -n | cut -d' ' -f2- > list.tmp && mv list.tmp list.txt
	echo "Sorted list by size!"
fi