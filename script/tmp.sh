#!/bin/sh

mkdir dependent_libs
echo "Create a new folder called dependent_libs at current path"

cd dependent_libs

echo "install [libLAS] 1.8"
echo "install libLAS dependent libs: geotiff"
sudo apt-get install libgeotiff-dev 
#clone LibLAS to local
git clone https://github.com/libLAS/libLAS.git 
cd libLAS
mkdir build
cd build
cmake ..
make -j4
sudo make install
cd ../..
echo "install [libLAS] done"

echo "Finished"

