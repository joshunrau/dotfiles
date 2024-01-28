import os
import socket
import sys

from config import Config
from program import Program

HOME_DIR = os.getenv("HOME")
HOSTNAME = socket.gethostname()
PLATFORM = sys.platform

if not PLATFORM in ['darwin', 'linux']:
    raise RuntimeError(f'Invalid platform: {sys.platform}')

program = Program()
args = program.parse_args()
config = Config(local_dir=args.local_dir)

print('Done!')
