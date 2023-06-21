#!/usr/bin/env bash
python dare_gram.py --gpu_id 0 --src rl --tgt rc --tradeoff_angle 0.01 --tradeoff_scale 0.00001 --treshold 0.97 --batch 36| tee ./rl2rc.log
python dare_gram.py --gpu_id 0 --src rl --tgt t --tradeoff_angle 0.1 --tradeoff_scale 0.001 --treshold 0.96 --batch 36| tee ./rl2t_2.log
python dare_gram.py --gpu_id 0 --src rc --tgt rl --tradeoff_angle 0.02 --tradeoff_scale 0.00001 --treshold 0.96 --batch 36| tee ./rc2rl.log
python dare_gram.py --gpu_id 0 --src rc --tgt t --tradeoff_angle 0.05 --tradeoff_scale 0.001 --treshold 0.95 --batch 36| tee ./rc2t.log
python dare_gram.py --gpu_id 0 --src t --tgt rl --tradeoff_angle 0.5 --tradeoff_scale 0.003 --treshold 0.999 --batch 36| tee ./t2rl.log
python dare_gram.py --gpu_id 0 --src t --tgt rc --tradeoff_angle 0.5 --tradeoff_scale 0.003 --treshold 0.999 --batch 36| tee ./t2rc.log

