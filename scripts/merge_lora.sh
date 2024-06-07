#!/bin/bash

MODEL_NAME=your_model_name
$MERGED_MODEL_NAME=your_merged_model_name

python ./scripts/merge_lora_weights.py \
--model-path ./exp_results/$MODEL_NAME \
--model-base liuhaotian/llava-v1.5-13b \
--save-model-path ./exp_results/$MERGED_MODEL_NAME