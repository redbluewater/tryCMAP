#!/bin/bash
#SBATCH --partition=compute
#SBATCH --mem=50gb
#SBATCH --time=12:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --job-name=coloc
#SBATCH --output=/vortexfs1/home/klongnecker/BATSwithCMAP/matchToBATS/output_dir/step2_colocalize.out
#SBATCH --error=/vortexfs1/home/klongnecker/BATSwithCMAP/matchToBATS/output_dir/step2_colocalize.error

dir="$HOME/BATSwithCMAP/matchToBATS"
cd "$dir"

echo `date`
echo This is job $SLURM_JOB_ID

# Setup Environment
CONDA_BASE=$(conda info --base)
source $CONDA_BASE/etc/profile.d/conda.sh
conda activate CMAPenv

python $dir/colocalize.py
