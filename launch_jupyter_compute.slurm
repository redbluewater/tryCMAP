#!/bin/bash
#SBATCH --partition=compute
#SBATCH --mem=100gb
#SBATCH --time=08:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --job-name=jupyter

# Setup Environment
CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda activate CMAPenv

jupyter notebook --no-browser --ip "*" \
            --notebook-dir /vortexfs1/home/klongnecker/BATSwithCMAP
            
