#!/bin/bash

# Submit this script with: sbatch FILENAME

#SBATCH --ntasks 1           # number of tasks
#SBATCH --cpus-per-task 8    # number of cpu cores per task
#SBATCH --time 02:30:00      # walltime
#SBATCH --mem 80gb           # amount of memory per CPU core (Memory per Task / Cores per Task)
#SBATCH --nodes 1            # number of nodes
#SBATCH --gpus-per-task v100:1 # gpu model and amount requested
#SBATCH --job-name "VesselBoost Training" # job name
#SBATCH --account cuuser_janineh_resolution_optimal_motion_planning  # account name
# Created with the RCD Docs Job Builder
#
# Visit the following link to edit this job:
# https://docs.rcd.clemson.edu/palmetto/job_management/job_builder/?num_cores=8&num_mem=80gb&use_gpus=yes&gpu_model=v100&walltime=10%3A00%3A00&account_name=eachand&job_name=VesselBoost+Training

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

python train.py --ds_path ./data/train --lb_path ./data/label --prep_mode 4 --ep 2 --lr 1e-3 --outmo ./models