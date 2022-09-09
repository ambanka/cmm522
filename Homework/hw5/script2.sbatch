#!/bin/bash
#SBATCH --job-name=errtest
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=100mb                    
#SBATCH --time=00:04:00   
#SBATCH --partition=windfall
#SBATCH --account=windfall

cd ~/ccbb_projects

y=1
while [ $y -le 5 ]
do
    grep -v "noncoding" gene_results.txt | awk 'FNR==y{x+= $2+$3+$4}END{print "The sum for row " y "is " x}'
    x=0
    y=$(( $y + 1 ))
done