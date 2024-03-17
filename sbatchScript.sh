#!/bin/bash
#SBATCH --job-name=VitJob
#SBATCH --ntasks=1 --cpus-per-task=10 --mem=40000M
#SBATCH --time=24:00:00
#SBATCH -p gpu --gres=gpu:titanrtx:1
module load python/3.9.9
python main.py --eval --load_compression_rate --data-path $path_to_imagenet$ --model vit_huge_patch14_mae --target_flops 103.4
