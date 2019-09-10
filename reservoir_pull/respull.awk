BEGIN {
	ANDERSON_TOTAL = 413100;
	ARK_TOTAL = 272200;
	linenumber = -3;	# the function was printing twice because on the second line, FNR = 0 + 2,
				# because linenumber was initialized as 0
	matched = 0;
}

/ark_af/ {linenumber = FNR}
FNR>=(linenumber+2) && /07:00/ && linenumber!=-3 && matched == 0 {
	and_level = 100*$4/ANDERSON_TOTAL;
	ark_level = 100*$8/ARK_TOTAL; 
	printf "%s,%s,Anderson,%.0f%\n%s,%s,Arrowrock,%.0f%\n", $1, $2, and_level, $1, $2, ark_level; matched = 1}
#FNR==(linenumber+2) {level = 100*$4/413100; printf "%s,%s,Anderson,%.0f%\n", $1, $2, level}
#FNR==(linenumber+2) {level = 100*$4/413100; printf "%s", date; printf ",Anderson,%.0f%\n", level}
