#!/bin/bash
#SBATCH --job-name=0_1_M100_Parallel_Lammps_E_11_Z_1_P_0_1
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err
#SBATCH --mail-user="twanhooy@gmail.com"
#SBATCH --mail-type="ALL"
#SBATCH --partition="cpu-long"
#SBATCH --time=80:00:00
#SBATCH --ntasks=4
#SBATCH --mem=10G
 

lmp -in in.M_100_E_11_Z_1_P_0_1_Parallel -pk omp 4 -sf omp