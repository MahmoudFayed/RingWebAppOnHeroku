gcc -c -fpic ring_opengl33.c -I $PWD/../../../include
gcc -shared -o $PWD/../../../lib/libring_opengl33.so ring_opengl33.o -L $PWD/../../lib -lring -L /usr/lib/i386-linux-gnu -lGL -lGLU -lglut

 


