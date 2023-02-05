#!/bin/bash
module load anaconda/2021.05
module load cuda/11.1
module load gcc/7.3

source activate opennmmlab_mmclassification
export PYTHONUNBUFFERED=1
export PATH_MMCLS="/HOME/scz0b6e/mmclassification"
export PATH_WORK1_BASE="/HOME/scz0b6e/OpenMMLabCamp/homework/work1_base"
export DATASET_WORK1_BASE="/HOME/scz0b6e/run/flower_dataset_split"
cd $PATH_WORK1_BASE
mkdir resnet18_b32_flower
cd $DATASET_WORK1_BASE
python "$PATH_MMCLS"/tools/train.py \
        "$PATH_WORK1_BASE"/resnet_b32_flower.py \
        --work-dir "$PATH_WORK1_BASE"/resnet18_b32_flower