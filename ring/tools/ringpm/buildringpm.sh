ring ../ring2exe/ring2exe.ring ringpm.ring
./cleartemp.sh

cp ringpm $PWD/../../bin/ringpm 

if [ -f ../../lib/libring.dylib ];
then
cd ../../bin
echo "`pwd`/ringpm \$1 \$2 \$3 \$4 \$5 \$6 \$7" > /usr/local/bin/ringpm
chmod +x /usr/local/bin/ringpm
fi

if [ -f ../../lib/libring.so ];
then
cd ../../bin
sudo echo "`pwd`/ringpm \$1 \$2 \$3 \$4 \$5 \$6 \$7" > /usr/bin/ringpm 
sudo chmod +x /usr/bin/ringpm
fi


