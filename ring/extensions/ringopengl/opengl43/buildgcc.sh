gcc -c -fpic ring_opengl43.c -I $PWD/../../../include
gcc -shared -o $PWD/../../../lib/libring_opengl43.so ring_opengl43.o -L $PWD/../../lib -lring -L /usr/lib/i386-linux-gnu -lGL -lGLU -lglut

 


