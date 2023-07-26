#!/usr/bin/env bash
# This file contains the script to generate the ppo self-play agents for coordination_ring layout
export RUN_ENV=local
python ppo_rllib_client.py with  seeds=[0]  layout_name="coordination_ring" clip_param=0.069 gamma=0.975 grad_clip=0.359 kl_coeff=0.156 lmbda=0.5 lr=1.6e-4 num_training_iters=650 old_dynamics=True reward_shaping_horizon=5000000 use_phi=False vf_loss_coeff=9.33e-3 results_dir=reproduced_results/ppo_sp_coordination_ring
