# xbot2_conda
Meta-package for build the Xbot2 framework on conda

# How to
```bash
# install dependencies
sudo apt update && sudo apt install wget python3-pip

# install miniforge
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh
bash Miniforge3-Linux-x86_64.sh -b

# install forest
pip3 install hhcm-forest

# initialize forest
mkdir forest_ws && cd forest_ws
forest init
forest add-recipes git@github.com:advrhumanoids/multidof_recipes.git

 # clones all sources
forest grow all --src-only -m stable 

# places this package into src
forest grow xbot2_conda  

# build all conda packages and deploy
export ANACONDA_ORG_TOKEN=mytoken  # token to deploy packages to the iit_hhcm channel
bash -i ./src/xbot2_conda/script/build.bash  
```
