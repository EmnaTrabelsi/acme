#!/bin/bash
apt-get update
mkdir acmetest
cd acmetest
mkdir testcaptures
git clone https://gitlab.com/baylibre-acme/acme-cli.git
cd acme-cli
./acme-cli switch_on 3
./acme-cli switch_on 8
cd ..
git clone https://github.com/ptitiano/acme-utils.git
cd acme-utils/pyacmecapture/
./pyacmecapture.py -s 3 -d 1 -o test1
cd ../..
cd acme-cli
./acme-cli switch_off 3
./acme-cli switch_off 8


