clang -c -fpic ring_opengl42.c -I $PWD/../../../include -I /usr/local/include
clang -dynamiclib -o $PWD/../../../lib/libring_opengl42.dylib ring_opengl42.o /usr/local/lib/libglew.dylib -framework OpenGL -framework GLUT -L $PWD/../../../lib  -lring 

 


