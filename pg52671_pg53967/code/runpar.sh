#!/bin/bash
#SBATCH --time=1:00
#SBATCH --ntasks=2
#SBATCH --partition=cpar
#SBATCH --cpus-per-task=4
perf stat -e cycles,instructions,L1-dcache-load-misses ./MDpar.exe < inputdata.txt
``````sh
#!/bin/bash
#SBATCH --time=1:00
#SBATCH --ntasks=2
#SBATCH --partition=cpar
#SBATCH --cpus-per-task=4
perf stat -e cycles,instructions,L1-dcache-load-misses ./MDpar.exe < inputdata.txt