func main
	C_LINESIZE = 80
	? copy("=",C_LINESIZE)
	? "Sample3DManyCubes Package"
	? copy("=",C_LINESIZE)
	? "Sample3DManyCubes package for the Ring programming language"
	? "See the folder : ring/samples/UsingOpenGL/manycubes"
	? copy("=",C_LINESIZE)
	cDir = currentdir()
	chdir(exefolder()+"/../samples/UsingOpenGL/manycubes")
	system("ring manycubes.ring")
	chdir(cDir)