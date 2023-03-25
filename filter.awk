#!/bin/awk -f
BEGIN { FS = " - " }
NR == 1 {
	sub(/.7./, "")
	print "## " $1
	print ""
}
NR == 5 { print $2 }
NR > 6 { print prev }
NR > 5 {
	sub(/^#/,"###")
	prev = $0
}
