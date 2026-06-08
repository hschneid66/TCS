#!/bin/bash

pip install transformers peft accelerate datasets sentencepiece torch
python finetune.py --dataset-id "dcba845f3369456a8d8befce12f55f80" --version-id "cfba2dff7cbe4d6fbabfdfc84c3c3699" --max-steps 50000 --max-epochs 50000 \
    --batch-size 1000 \
    --num-workers 100 \
    --lora-r 32 --lora-alpha 64
