gcc -c -fpic ring_opengl11.c -I $PWD/../../../include
gcc -shared -o $PWD/../../../lib/libring_opengl11.so ring_opengl11.o -L $PWD/../../lib -lring -L /usr/lib/i386-linux-gnu -lGL -lGLU -lglut

 


