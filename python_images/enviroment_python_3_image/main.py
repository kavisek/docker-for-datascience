import sys
import os
import pprint


def main():
    print("python version:", sys.version)
    pprint.pprint(os.environ._data)


if __name__ == "__main__":
    main()
