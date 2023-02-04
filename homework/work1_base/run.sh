#!/bin/bash
module load anaconda/2021.05
module load cuda/11.1
module load gcc/7.3

source activate opennmmlab_mmclassification
export PYTHONUNBUFFERED=1
export PATH_MMCLS="/HOME/scz0b6e/OpenMMLabCamp/mmclassification"
export PATH_WORK1_BASE="/HOME/scz0b6e/OpenMMLabCamp/homework/work1_base"
N_GPUS=8
python -m torch.distributed.launch \
        --nproc_per_node=${N_GPUS} \
        "$PATH_MMCLS"/tools/train.py "$PATH_WORK1_BASE"/resnet18_b32_flower.py --work-dir resnet18_b32_flower --launcher py