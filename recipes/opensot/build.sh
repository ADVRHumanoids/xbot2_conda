git clone git@github.com:oxfordcontrol/osqp.git --branch v0.6.3 --recursive

mkdir install

mkdir osqp_build && cd osqp_build
cmake -DCMAKE_INSTALL_PREFIX=$PWD/../install -DCMAKE_BUILD_TYPE=Release -DDLONG=OFF -DPRINTING=OFF -DPROFILING=OFF -DENABLE_MKL_PARDISO=OFF ../osqp
make install -j $(nproc)
cd ..

mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=install ..

make install -j $(nproc)
