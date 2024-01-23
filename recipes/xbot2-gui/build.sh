mkdir build && cd build
mkdir install

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release ..

make -j $(nproc) install
