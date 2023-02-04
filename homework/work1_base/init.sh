#!/bin/sh

export WORK_KERWIN=${PWD}
export HOME_KERWIN="/HOME/scz0b6e"
export DATASET_KERWIN="/data/run01/scz0b6e"
cd $DATASET_KERWIN
unzip flower_dataset.zip
python "$WORK_KERWIN"/split_data.py flower_dataset/ flower_dataset_split/

# shellcheck disable=SC2164
cd $WORK_KERWIN
