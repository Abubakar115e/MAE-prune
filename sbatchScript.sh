#!/bin/bash
#SBATCH --job-name=VitJob
#SBATCH --ntasks=1 --cpus-per-task=10 --mem=20000M
#SBATCH --time=24:00:00
#SBATCH -p gpu --gres=gpu:A100:1
#SBATCH --partition=general
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=1
#SBATCH --mem=20G

module load python/3.8.0
source activate myenv

python main.py --eval --load_compression_rate --data-path $path_to_imagenet$ --model vit_huge_patch14_mae --target_flops 103.4