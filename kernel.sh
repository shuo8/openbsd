#!/bin/ksh

cd /usr/src/sys/arch/amd64/conf
config GENERIC.MP
cd ../compile/GENERIC.MP
make -j4
doas make install
