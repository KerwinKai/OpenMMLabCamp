#!/bin/bash
module load anaconda/2021.05
module load cuda/11.1
module load gcc/7.3

source activate opennmmlab_mmclassification
export PYTHONUNBUFFERED=1

N_GPUS=8
python -m torch.distributed.launch \
        --nproc_per_node=${N_GPUS} \
        tools/train.py configs/resnet18/resnet18_b32_flower.py --work-dir
        work/resnet18_b32_flower --launcher py