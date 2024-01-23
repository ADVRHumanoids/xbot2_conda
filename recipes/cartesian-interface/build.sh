git clone git@github.com:advrhumanoids/RMLTypeII.git --branch static 

mkdir install

mkdir rml_build && cd rml_build
cmake -DCMAKE_INSTALL_PREFIX=$PWD/../install -DCMAKE_BUILD_TYPE=Release ../RMLTypeII
make install -j $(nproc)
cd ..

mkdir build && cd build

export CMAKE_PREFIX_PATH=$PWD/../install:$CMAKE_PREFIX_PATH
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release ..

make install -j $(nproc)
