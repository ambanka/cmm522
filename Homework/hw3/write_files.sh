#!/bin/bash
x=1
text=("Our hypothesis is right.")
while [ $x -le 2 ]
do
  echo ${text} > important_results$x.txt
  x=$(( $x + 1 ))
done