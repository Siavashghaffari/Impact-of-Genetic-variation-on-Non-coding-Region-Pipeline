#!/bin/bash
#PBS -l walltime=47:59:00
#PBS -l nodes=1:ppn=8
#PBS -l mem=64g,vmem=64g
#PBS -m abe
cd PIPE
module load python/3.9.2_torch_gpu
#export PYTHONUSERBASE=$HOME/.usr/local/python/3.8.0
python /home/sghaffari/PIPE/MAIN_SV.py
module load R/4.1.0
chmod +x ./R_SV.r
Rscript ./R_SV.r
python /home/sghaffari/PIPE/Wrapper.py "lncRNA" "SV"