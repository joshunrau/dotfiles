import os
import socket
import sys

from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter
from pathlib import Path

from config import Config

HOME_DIR = os.getenv("HOME")
HOSTNAME = socket.gethostname()
PLATFORM = sys.platform

if not PLATFORM in ['darwin', 'linux']:
    raise RuntimeError(f'Invalid platform: {sys.platform}')

parser = ArgumentParser(formatter_class=ArgumentDefaultsHelpFormatter, prog="dotfiles")
parser.add_argument('--local-dir', default=f"{HOME_DIR}/.local", help="base directory for install", metavar="", type=str)
args = parser.parse_args()

config = Config(local_dir=args.local_dir)

print('Done!')
