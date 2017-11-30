#!/bin/bash
set -eu

./configure --prefix=$PREFIX --sysconfdir=$PREFIX
make
make install

curl -s https://get.nextflow.io | bash 
chmod 755 nextflow
cp nextflow $PREFIX/bin
$PREFIX/bin/nextflow -download