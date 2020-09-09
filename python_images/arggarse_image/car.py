import sys
import argparse


def main():
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "-m", "--model_id", default="civic", required=True, help="a boot"
    )
    parser.add_argument(
        "-c", "--color_id", required=True, default="green", help="car color"
    )

    known_args, _ = parser.parse_known_args()
    print("printing arguments...")

    model_id = known_args.model_id
    color_id = known_args.color_id

    # Print variables
    print(f"model_id: {model_id}")
    print(f"color_id: {color_id}")

    # Print car review.
    if color_id == "green":
        print("your car is great!")
    else:
        print("your car is okay.")


if __name__ == "__main__":
    main()

# Run the script locally.
# python3 car.py -m civic -c white
# python3 car.py --model_id civic -color_id white
