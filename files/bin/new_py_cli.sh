cat > $1 <<EOF
import argparse
import sys
from pathlib import Path
from typing import *

from dotenv import load_dotenv
from loguru import logger as log

load_dotenv()

def main(filepath: Path):
    log.debug("Processing {}!", filepath)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="", formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("filepath", type=Path, help="Input file")

    try:
        args = parser.parse_args()
        main(**vars(args))
    except:
        parser.print_help()
        sys.exit(0)
EOF