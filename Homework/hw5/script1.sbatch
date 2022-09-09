#!/bin/bash
#SBATCH --job-name=errtest
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=100mb                    
#SBATCH --time=00:04:00   
#SBATCH --partition=windfall
#SBATCH --account=windfall

cd ~/ccbb_projects
grep -v "noncoding" gene_results.txt
awk '{x+=$2}END{print "Column 2 average is " x/NR}' gene_results.txt