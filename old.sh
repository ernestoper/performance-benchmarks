#!/bin/bash

# todo: need to clean deal.II build directory

# Run some selected old versions (releases) and apply necessary patches before
# doing so.

cd dealii;git checkout v8.3.0;cd ..
rm -rf build
./test.sh

cd dealii;git checkout v8.2.1;cd ..
patch -R -p3 <patches/821andbefore.patch
rm -rf build
./test.sh

# not tested:
cd dealii;git checkout v8.1.0;cd ..
patch -p1 <patches/810andbefore.patch
rm -rf build
./test.sh

# not tested:
#cd dealii;git checkout v8.0.0;cd ..
#rm -rf build
#./test.sh 
