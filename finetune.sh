#!/bin/bash

pip install transformers peft accelerate datasets sentencepiece torch
python finetune.py --dataset-id "dcba845f3369456a8d8befce12f55f80" --version-id "cfba2dff7cbe4d6fbabfdfc84c3c3699" --max-steps 10000 --max-epochs 10000 \
    --batch-size 100 \
    --num-workers 32 \
    --lora-r 32 --lora-alpha 64 --save-model
