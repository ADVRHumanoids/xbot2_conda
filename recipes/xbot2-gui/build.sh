git clone git@github.com:advrhumanoids/ec_xbot2_client.git --branch devel
mkdir ec_msgs_build
mkdir install

cd ec_msgs_build
cmake -DCMAKE_INSTALL_PREFIX=../install -DEC_CLIENT_ENABLE=OFF -DEC_CLIENT_ENABLE_DEVICE=OFF ../ec_xbot2_client 
make -j $(nproc) install
cd ..

mkdir build && cd build
export CMAKE_PREFIX_PATH=$PWD/../install:$CMAKE_PREFIX_PATH
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release ..
make -j $(nproc) install
