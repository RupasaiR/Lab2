idx=0


rm output.txt
touch output.txt
a=$(find $2 -name "*.txt" | sort > files.txt)

idx=0
while read -r line;
do
paths[$idx]=$line;
idx=`expr $idx + 1`;
done < "files.txt";

rm files.txt
for path in ${paths[@]}
do
			while IFS= read -r line
			do
			l=$(echo $line | cut -f1 -d:)
			l1=$(echo $line | cut -f2 -d:)
    		echo "path: $path line no.: $l line: $l1" >> output.txt
			done < <(grep -nwf $1 $path)
	
done


