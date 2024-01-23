DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

ENV_NAME=xbot2_conda_build_env

export FOREST_MODE=stable

mamba env create -f $DIR/../env/build_environment.yaml --name $ENV_NAME

mamba activate $ENV_NAME

cd $DIR/../recipes

# boa build . --skip-existing -m conda_build_config.yaml
boa build . -m conda_build_config.yaml

bash $DIR/deploy.bash