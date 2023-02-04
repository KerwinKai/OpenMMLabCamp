#!/bin/sh

export WORK_KERWIN=${PWD}
export HOME_KERWIN="/HOME/scz0b6e"
export DATASET_KERWIN="/data/run01/scz0b6e"
export CHECKPOINTS_PATH="/HOME/scz0b6e/run/checkpoints"
cd $DATASET_KERWIN
unzip flower_dataset.zip
python "$WORK_KERWIN"/split_data.py flower_dataset/ flower_dataset_split/

cd $CHECKPOINTS_PATH
wget https://download.openmmlab.com/mmclassification/v0/resnet/resnet18_batch256_imagenet_20200708-34ab8f90.pth

# shellcheck disable=SC2164
cd $WORK_KERWIN
