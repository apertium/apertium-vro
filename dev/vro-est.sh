echo ""
for i in `cat vro-est.twol | grep '!!' | sed 's/ /_/g' | grep -v '^$'`; do 
	w=`echo $i | sed 's/_/ /g' | sed 's/!! //g' | sed 's/ //g'`; 
	echo "=== "$w" ========================================"
	z=`echo $w | cut -f1 -d':' | hfst-strings2fst | hfst-compose-intersect -2 vro-est.hfst | hfst-fst2strings`; 
	if [[ $w != $z ]]; then
		echo "$z != $w";
	fi
done
echo ""
for i in `cat vro-est.twol | grep '!@' | sed 's/ /_/g' | grep -v '^$'`; do
	w=`echo $i | sed 's/!@_//g' | sed 's/_/ /g'`;
	echo "=== "$w" ========================================"
	echo $w | sed 's/^ *//g' | sed 's/ *$//g' | hfst-pair-test vro-est.twol.hfst;
done
