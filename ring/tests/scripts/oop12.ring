oMsg = new Message
oMsg.cMsg = "Welcome"
oMsg.print()

oMsg2 = new Message2
oMsg2.cMsg = "Great"

t = clock()
for x = 1 to 100000
	oMsg2.test()
	oMsg2.print()
	oMsg2.one()
next
see "Time " + (clock() - t) + nl

class base
	func one
		#see "one " + nl

Class Message from base
	cMsg = ""
	func print
		#see cMsg + nl

Class Message2 from Message
	cMsg = ""
	func test
		#see "nice" + nl