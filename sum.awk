BEGIN {FS=","}	# set the Field Separator as ,
{sum+=$3}	# add up the entries in the first column
{avg=sum/NR} 
END {print "First column sum: " sum; print "First column average: " avg}
