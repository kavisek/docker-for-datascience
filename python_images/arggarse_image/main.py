import sys
import argparse


def main():
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "-b", "--book_id", default="outliers", required=True, help="a boot"
    )
    parser.add_argument(
        "-c", "--color_id", required=True, default="green", help="book color"
    )

    known_args, _ = parser.parse_known_args()
    print("printing arguments...")

    book_id = known_args.book_id
    color_id = known_args.color_id

    # Print variables
    print(f"book_id: {book_id}")
    print(f"color_id: {color_id}")

    # Print book review.
    if color_id == "green":
        print("your book is great!")
    else:
        print("your book is okay.")


if __name__ == "__main__":
    main()

# Run the script locally.
# python3 main.py -b outliers -c white
# python3 main.py --book_id outliers -color_id white
