clang -c -fpic ring_opengl14.c -I $PWD/../../../include -I /usr/local/include
clang -dynamiclib -o $PWD/../../../lib/libring_opengl14.dylib ring_opengl14.o /usr/local/lib/libglew.dylib -framework OpenGL -framework GLUT -L $PWD/../../../lib  -lring 

 


