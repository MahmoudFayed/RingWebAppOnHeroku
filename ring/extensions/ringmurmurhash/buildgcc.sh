gcc -c -fpic ring_murmurhash.c libmurmurhash/MurmurHash1.c \
    libmurmurhash/MurmurHash2.c libmurmurhash/MurmurHash3.c \
    -g -Wall -O3 -I $PWD/../../include -I libmurmurhash/

gcc -shared -o $PWD/../../lib/libring_murmurhash.so *.o -L $PWD/../../lib -lring

rm *.o
