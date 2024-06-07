#!/bin/bash

SELF_RESPONSE_PATH=your_response_file_path
SELF_RESPONSE_NAME=your_response_file_name
PROMPT_FILE_PATH=your_prompt_file_path
PROMPT_FILE_NAME=your_prompt_file_name

cat $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_0.jsonl \
    $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_1.jsonl \
    $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_2.jsonl \
    $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_3.jsonl \
    $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_4.jsonl \
    $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_5.jsonl \
    $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_6.jsonl \
    $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME_7.jsonl \
    > $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME.jsonl

python llava/sima/prompt_for_critic.py \
    --self-response-path $SELF_RESPONSE_PATH/$SELF_RESPONSE_NAME.jsonl \
    --prompt-save-path $SELF_RESPONSE_PATH \
    --prompt-save-name $PROMPT_FILE_NAME.jsonl \

