gcc -c -fpic ring_freeglut.c -I $PWD/../../include
gcc -shared -o $PWD/../../lib/libring_freeglut.so ring_freeglut.o -L $PWD/../../lib -lring -L /usr/lib/i386-linux-gnu -lGL -lGLU -lglut 

 


