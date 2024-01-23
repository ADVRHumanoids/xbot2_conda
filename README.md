# xbot2_conda
Meta-package for build the Xbot2 framework on conda

# How to
```
mkdir forest_ws && cd forest_ws
forest init
forest add-recipes git@github.com:advrhumanoids/multidof_recipes.git

forest grow all --src-only -m stable  # clones all sources

forest grow xbot2_conda  # places this package into src

export ANACONDA_ORG_TOKEN=mytoken  # token to deploy packages to the iit_hhcm channel
bash -i ./src/xbot2_conda/script/build.bash  # build all conda packages and deploy
```
