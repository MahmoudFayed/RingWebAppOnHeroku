clang -c -fpic ring_opengl15.c -I $PWD/../../../include -I /usr/local/include
clang -dynamiclib -o $PWD/../../../lib/libring_opengl15.dylib ring_opengl15.o /usr/local/lib/libglew.dylib -framework OpenGL -framework GLUT -L $PWD/../../../lib  -lring 

 


