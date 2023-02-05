#!/bin/bash
module load anaconda/2021.05
module load cuda/11.1
module load gcc/7.3

source activate opennmmlab_mmclassification
export PYTHONUNBUFFERED=1
export PATH_MMCLS="/HOME/scz0b6e/mmclassification"
export PATH_WORK1_ADVANCED="/HOME/scz0b6e/OpenMMLabCamp/homework/work1_advanced"
export PTAH_CHECKPOINT="/HOME/scz0b6e/run/checkpoints"
cd $PTAH_CHECKPOINT
mkdir resnet50_cifar10

N_GPUS=4
python -m torch.distributed.launch \
        --nproc_per_node=${N_GPUS} \
        "$PATH_MMCLS"/tools/train.py "$PATH_WORK1_ADVANCED"/resnet50-gpus.py --work-dir "$PTAH_CHECKPOINT"/resnet50_cifar10 --launcher pytorch
