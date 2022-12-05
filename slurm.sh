#!/bin/bash
# "#SBATCH" introduces options for sbatch exactly as per the command line
#SBATCH --job-name mind-vis
#SBATCH --ntasks=1 # leave at 1                
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G
#SBATCH --time=10:00:00                                          
#SBATCH --output=test_job_%j.out --error=test_job_%j.err
#SBATCH --mail-type=ALL --mail-user=jan.bauer@rwth-aachen.de
#SBATCH --partition gpu.q
nvidia-smi
source activate mind-vis
cd ~/mind-vis
python code stageB_ldm_finetune.py