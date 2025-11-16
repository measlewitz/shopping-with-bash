echo "Reading grocery list."
while read p; do
if [[ "$p" = "$1" || "$p" = "$2" ]]; then
echo "$p is on the grocery list!"
fi
done < list.txt