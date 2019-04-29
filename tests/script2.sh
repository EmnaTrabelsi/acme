#!/bin/bash
set -x 
apt-get update
mkdir acmetest
cd acmetest
git clone https://gitlab.com/baylibre-acme/acme-cli.git

