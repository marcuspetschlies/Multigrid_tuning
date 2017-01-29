#!/bin/bash -l


#SBATCH -p debug
#SBATCH -N 8
#SBATCH -C knl,quad,cache
#SBATCH -t 30:00
#SBATCH -J 256_4c4_knl_mg 
#SBATCH -o 3_4c4_256.out 
#SBATCH -e 3_4c4_256.err 


srun -n 256  ./qlua_cori  plaquette.qlua load_gauge_field.qlua stout_smear.qlua 3.qlua 

