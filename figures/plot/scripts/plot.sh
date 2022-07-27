#!/bin/bash
files=("tax beers hospital movies rayyan flights")
for item in $files; do
    python3 ./plot/scripts/distinct.py -f err_dist_files/local_gen_dist_$item.txt -o plot/distinct/${item}_distinct_2x/ &
    python3 ./plot/scripts/distinct.py -f err_dist_files/local_original_dist_$item.txt -o plot/distinct/${item}_distinct/ &
done
wait
