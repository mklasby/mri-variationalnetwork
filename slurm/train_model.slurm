#!/bin/bash

## GET RESOURCES ##
## TODO: 
#SBTACH --partition = gpu-V100 --gres=gpu:1
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=0
#SBATCH --time=24:00:00

## SET ENV ##
export PATH=~/software/miniconda3/bin:$PATH
conda cd
conda activate ML

## RUN SCRIPT ##
python3 ../model_training/autosk.py
