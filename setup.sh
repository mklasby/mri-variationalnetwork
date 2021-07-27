#!/bin/bash

## Get env setup, start in working folder 

## Steps to import repos and init git env 
## git clone git@github.com:mklasby/mri-variationalnetwork.git
## git clone git@github.com:VLOGroup/optox.git
## cd mri-variationalnetwork
## conda create env -f ./environment.

conda activate mrivn 
conda install pybind11
## MRI-VN env set, but it depends on optox which we still need to install
cd ../optox
## Set req'd env vars
module load cmake/3.17.3
module load cuda/11.3.0
export COMPUTE_CAPABILITY=7.0
export CUDA_ROOT_DIR=/global/software/cuda/cuda-11.3
export CUDA_SDK_ROOT_DIR=/global/software/cuda/cuda-11.3/samples
## Build optox into CUDA 
mkdir build
cd build
cmake .. -DWITH_PYTHON=OFF -DWITH_PYTORCH=OFF -DWITH_TENSORFLOW=ON -DCMAKE_BUILD_TYPE=Release
make install
# salloc --mem=10G -t 01:00:00 -p gpu-v100 --gres=gpu:1