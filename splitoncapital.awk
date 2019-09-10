{split($0, a, /([A-Z][a-z]*)*/)}
END {for (i in a) {print a[2]}}
