#!/bin/bash

pip install transformers peft accelerate datasets sentencepiece torch
python finetune.py --dataset-id "dcba845f3369456a8d8befce12f55f80" --version-id "cfba2dff7cbe4d6fbabfdfc84c3c3699" \
    --model Qwen/Qwen2.5-1.5B-Instruct \
    --max-steps 5000 \
    --save-model
