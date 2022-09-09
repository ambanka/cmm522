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
awk '{x+= $2+$3+$4}{print "The sum for this row is " x/1}' gene_results.txt