gcc -c -fpic ring_allegro.c -I $PWD/../../include
gcc -shared -o $PWD/../../lib/libringallegro.so ring_allegro.o -L $PWD/../../lib -lring -L /usr/lib/i386-linux-gnu -lallegro -lallegro_image -lallegro_dialog -lallegro_ttf -lallegro_acodec -lallegro_primitives

 


