git clone git@github.com:advrhumanoids/rbdl.git --branch devel

mkdir install

mkdir rbdl_build && cd rbdl_build

cmake -DCMAKE_INSTALL_PREFIX=$PWD/../install\
 -DCMAKE_BUILD_TYPE=Release \
  -DRBDL_BUILD_STATIC=TRUE \
  -DRBDL_BUILD_ADDON_URDFREADER=TRUE \
  -DRBDL_USE_ROS_URDF_LIBRARY=TRUE \
  ../rbdl

make install -j $(nproc)
cd ..

mkdir build && cd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=install ..

make install -j $(nproc)
