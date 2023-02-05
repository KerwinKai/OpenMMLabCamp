#!/bin/bash
module load anaconda/2021.05
module load cuda/11.1
module load gcc/7.3

source activate opennmmlab_mmclassification
export PYTHONUNBUFFERED=1
export PATH_MMCLS="/HOME/scz0b6e/mmclassification"
export PATH_WORK1_ADVANCED="/HOME/scz0b6e/OpenMMLabCamp/homework/work1_advanced"
cd $PATH_WORK1_ADVANCED
mkdir mobilenet-v2_cifar10
python "$PATH_MMCLS"/tools/train.py \
        "$PATH_WORK1_ADVANCED"/mobilenetv2.py \
        --work-dir "$PATH_WORK1_ADVANCED"/mobilenet-v2_cifar10
