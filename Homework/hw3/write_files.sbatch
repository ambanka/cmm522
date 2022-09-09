#!/bin/bash
#SBATCH --job-name=me_bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=1gb
#SBATCH --time=00:03:00
#SBATCH --partition=windfall
#SBATCH --account=windfall
#SBATCH --mail-type=END
x=1
text=("Our hypothesis is right.")
while [ $x -le 10 ]
do
  echo ${text} > important_results$x.txt
  x=$(( $x + 1 ))
done