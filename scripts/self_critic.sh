#!/bin/bash

PROMPT_FILE_PATH=your_prompt_file_path
PROMPT_FILE_NAME=your_prompt_file_name
COCO2017TRAIN_PATH=your_coco_train2017_path
CRITIC_FILE_PATH=your_critic_results_path
CRITIC_RESULT_NAME=your_critic_results_name

CUDA_VISIBLE_DEVICES=0 python llava/sima/model_self_rewarding.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $PROMPT_FILE_PATH/$PROMPT_FILE_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_0.jsonl \
    --num-chunks 8 \
    --chunk-idx 0 \
    --conv-mode vicuna_v1 &


CUDA_VISIBLE_DEVICES=1 python llava/sima/model_self_rewarding.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $PROMPT_FILE_PATH/$PROMPT_FILE_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_1.jsonl \
    --num-chunks 8 \
    --chunk-idx 1 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=2 python llava/sima/model_self_rewarding.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $PROMPT_FILE_PATH/$PROMPT_FILE_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_2.jsonl \
    --num-chunks 8 \
    --chunk-idx 2 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=3 python llava/sima/model_self_rewarding.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $PROMPT_FILE_PATH/$PROMPT_FILE_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_3.jsonl \
    --num-chunks 8 \
    --chunk-idx 3 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=4 python llava/sima/model_self_rewarding.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $PROMPT_FILE_PATH/$PROMPT_FILE_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_4.jsonl \
    --num-chunks 8 \
    --chunk-idx 4 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=5 python llava/sima/model_self_rewarding.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $PROMPT_FILE_PATH/$PROMPT_FILE_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_5.jsonl \
    --num-chunks 8 \
    --chunk-idx 5 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=6 python llava/sima/model_self_rewarding.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $PROMPT_FILE_PATH/$PROMPT_FILE_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_6.jsonl \
    --num-chunks 8 \
    --chunk-idx 6 \
    --conv-mode vicuna_v1 &

CUDA_VISIBLE_DEVICES=7 python llava/sima/model_self_rewarding.py \
    --model-path liuhaotian/llava-v1.5-13b \
    --question-file $PROMPT_FILE_PATH/$PROMPT_FILE_NAME.jsonl \
    --image-folder $COCO2017TRAIN_PATH \
    --answers-file $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_7.jsonl \
    --num-chunks 8 \
    --chunk-idx 7 \
    --conv-mode vicuna_v1 &

#cat $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_0.jsonl \
#    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_1.jsonl \
#    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_2.jsonl \
#    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_3.jsonl \
#    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_4.jsonl \
#    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_5.jsonl \
#    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_6.jsonl \
#    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_7.jsonl \
#    > $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME.jsonl

