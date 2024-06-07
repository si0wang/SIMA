#!/bin/bash

RESPONSE_PROMPT_PATH=your_response_prompt_path
RESPONSE_PROMPT_NAME=your_response_prompt_name
COCO2017TRAIN_PATH=your_coco_train2017_path
SELF_RESPONSE_PATH=your_response_file_path
SELF_RESPONSE_NAME=your_response_file_name

CUDA_VISIBLE_DEVICES=0 python llava/sima/generate_samples.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $RESPONSE_PROMPT_PATH/$RESPONSE_PROMPT_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_0.jsonl \
    --num-chunks 8 \
    --chunk-idx 0 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=1 python llava/sima/generate_samples.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $RESPONSE_PROMPT_PATH/$RESPONSE_PROMPT_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_1.jsonl \
    --num-chunks 8 \
    --chunk-idx 1 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=2 python llava/sima/generate_samples.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $RESPONSE_PROMPT_PATH/$RESPONSE_PROMPT_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_2.jsonl \
    --num-chunks 8 \
    --chunk-idx 2 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=3 python llava/sima/generate_samples.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $RESPONSE_PROMPT_PATH/$RESPONSE_PROMPT_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_3.jsonl \
    --num-chunks 8 \
    --chunk-idx 3 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=4 python llava/sima/generate_samples.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $RESPONSE_PROMPT_PATH/$RESPONSE_PROMPT_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_4.jsonl \
    --num-chunks 8 \
    --chunk-idx 4 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=5 python llava/sima/generate_samples.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $RESPONSE_PROMPT_PATH/$RESPONSE_PROMPT_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_5.jsonl \
    --num-chunks 8 \
    --chunk-idx 5 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=6 python llava/sima/generate_samples.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $RESPONSE_PROMPT_PATH/$RESPONSE_PROMPT_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_6.jsonl \
    --num-chunks 8 \
    --chunk-idx 6 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=7 python llava/sima/generate_samples.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $RESPONSE_PROMPT_PATH/$RESPONSE_PROMPT_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_7.jsonl \
    --num-chunks 8 \
    --chunk-idx 7 \
    --conv-mode vicuna_v1 &