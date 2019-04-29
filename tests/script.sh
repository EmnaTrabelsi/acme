#!/bin/bash
set -x 
apt-get update
mkdir acmetest
cd acmetest
git clone https://gitlab.com/baylibre-acme/acme-cli.git
cd acme-cli
cd ..
git clone https://github.com/ptitiano/acme-utils.git
cd acme-utils/pyacmecapture/
x=`pwd`
mkdir testcaptures
./pyacmecapture.py --ip 10.65.34.1 -s 8 -d 1 -o test1 -od $x/testcaptures

