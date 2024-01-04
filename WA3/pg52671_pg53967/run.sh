#!/bin/bash
#SBATCH --time=5:00
#SBATCH --partition=cpar
#SBATCH --constraint=k20
#SBATCH --ntasks=1
module load gcc/7.2.0
module load cuda/11.3.1
time nvprof ./bin/stencil < inputdata.txt
