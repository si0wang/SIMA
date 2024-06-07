#!/bin/bash

CRITIC_FILE_PATH=your_critic_results_path
CRITIC_RESULT_NAME=your_critic_results_name
DATASET_FILE_PATH=your_dataset_path
DATASET_FILE_NAME=your_dataset_name

cat $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_0.jsonl \
    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_1.jsonl \
    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_2.jsonl \
    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_3.jsonl \
    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_4.jsonl \
    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_5.jsonl \
    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_6.jsonl \
    $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME_7.jsonl \
    > $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME.jsonl

python llava/sima/dataset_for_dpo.py \
    --critic-result-path $CRITIC_FILE_PATH/$CRITIC_RESULT_NAME.jsonl \
    --dataset-save-path $DATASET_FILE_PATH \
    --dataset-save-name $DATASET_FILE_NAME.json \

