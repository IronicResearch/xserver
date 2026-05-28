#!/bin/sh
export ARCH=x86_64
export CPUS=`nproc`
export JOBS="-j$((CPUS))"

if [ ! -f configure ]
then
	sudo apt install xorg-dev xutils-dev libtool
	./autogen.sh
	./configure
fi
make $JOBS
sudo make install
