#!/bin/bash

pip install transformers peft accelerate datasets sentencepiece torch
python finetune.py --dataset-id "dcba845f3369456a8d8befce12f55f80" --version-id "cfba2dff7cbe4d6fbabfdfc84c3c3699" \
    --model Qwen/Qwen2.5-3B-Instruct \
    --batch-size 1 \
    --gradient-accumulation 16 \
    --max-length 512 \
    --num-workers 4 \
    --lora-r 16 --lora-alpha 32 \
    --max-steps 2000 --warmup-steps 100 --log-interval 50 \
    --save-model
