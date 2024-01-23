# xbot2_conda
Meta-package for build the Xbot2 framework on conda

# How to
```bash
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
