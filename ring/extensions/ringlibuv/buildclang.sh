clang -c -fpic ring_libuv.c -I $PWD/../../include -I /usr/local/include
clang -dynamiclib -o $PWD/../../lib/libring_uv.dylib ring_libuv.o  -L $PWD/../../lib  -lring -luv

 


