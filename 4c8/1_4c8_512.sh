#!/bin/bash -l


#SBATCH -p debug
#SBATCH -N 8.0
#SBATCH -C knl,quad,cache
#SBATCH -t 30:00
#SBATCH -J 512_4c8_knl_mg 
#SBATCH -o 1_4c8_512.out 
#SBATCH -e 1_4c8_512.err 


srun -n 512  ./qlua_knl_cori  plaquette.qlua load_gauge_field.qlua stout_smear.qlua 1.qlua 

