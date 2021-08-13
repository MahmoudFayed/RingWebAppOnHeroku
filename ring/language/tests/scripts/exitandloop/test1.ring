# This test program is written by Ilir Liburn

str = "test"
size = len(str)
for c = 1 to size step 1
? 'c = 1 to size step 1'
? c
	ssize = len(substr(str,2))
	for s = 1 to ssize step 2
		? "s = 1 to ssize step 2"
		? s
		hybrid = new Hybrid(str)
		hsize = len(hybrid)
		for h = 1 to hsize step 3
			? "h = 1 to hsize step 3"
			? h
			loop 2
		next
	next
next

class Hybrid
	data
	func init val 
		data = val

        func operator cOperator,Para
		switch cOperator
			on "len"
				return len(data)
			on "[]"
				return &data[Para]
		off