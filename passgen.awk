# Random password generator for GNU AWK
# Copyright (c) 2002 by Antoni Sawicki <tenox@tenox.tc>
# This programm is in Public Domain
#

function passgen(len) {
	m="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	pass=""
	while(len) {
		pass=pass substr(m, int(length(m) * rand()), 1)
		len--
	}
	return pass
}

BEGIN {
	srand()
	print passgen(8)
}
