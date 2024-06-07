import argparse
import json


def to_chair(args):
    with open(args.model_response_pth, 'r') as jsonl_file:
        lines = jsonl_file.readlines()

    overall_metrics = {
        "metric1": 0.75,
    }
    img_to_eval = {}

    for i, line in enumerate(lines):
        data = json.loads(line)

        # Extracting relevant information from the JSONL data
        image_id = int(data["id"][-10:-4])

        caption = data["answer"]

        if caption == "":
            continue

        img_info = {
            "image_id": image_id,
            "caption": caption
        }
        img = {str(i): img_info}
        img_to_eval.update(img)
    #img_to_eval = dict(img_to_eval)
    # Constructing the final JSON data
    final_json_data = {
        "overall": overall_metrics,
        "imgToEval": img_to_eval
    }

    # Writing the JSON data to the output file
    with open(args.chair_pth, 'w') as output_file:
        json.dump(final_json_data, output_file, indent=4)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--model_response_pth", type=str,
                        default='/export/jchen169/xywang/POVID-main/playground/data/eval/Hallucination/answers/sampled5k_val2014/CHAIRl_self_rewarding_lora_v1_epoch3.json')
    parser.add_argument("--chair_pth", type=str,
                        default='/export/jchen169/xywang/POVID-main/playground/data/eval/Hallucination/annotations/annotations')
    args = parser.parse_args()
    to_chair(args)