#!/usr/bin/env bash
python dare_gram.py --gpu_id 0 --src c --tgt n --tradeoff_angle 0.1 --tradeoff_scale 0.001 --treshold 0.999 --batch 36| tee ./c2n.log
python dare_gram.py --gpu_id 0 --src c --tgt s --tradeoff_angle 0.05 --tradeoff_scale 0.001 --treshold 0.90 --batch 36| tee ./c2s.log
python dare_gram.py --gpu_id 0 --src n --tgt c --tradeoff_angle 0.05 --tradeoff_scale 0.001 --treshold 0.96 --batch 36| tee ./n2c.log
python dare_gram.py --gpu_id 0 --src n --tgt s --tradeoff_angle 0.02 --tradeoff_scale 0.001 --treshold 0.95 --batch 36| tee ./n2s.log
python dare_gram.py --gpu_id 0 --src s --tgt c --tradeoff_angle 0.01 --tradeoff_scale 0.00001 --treshold 0.999 --batch 36| tee ./s2c.log
python dare_gram.py --gpu_id 0 --src s --tgt n --tradeoff_angle 0.01 --tradeoff_scale 0.00001 --treshold 0.999 --batch 36| tee ./s2n.log
