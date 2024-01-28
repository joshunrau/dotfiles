import os

from argparse import ArgumentParser, ArgumentDefaultsHelpFormatter, Namespace

HOME_DIR = os.getenv("HOME")

class ProgramNamespace(Namespace):
    local_dir: str

class Program:
    parser: ArgumentParser

    def __init__(self) -> None:
        self.parser = ArgumentParser(formatter_class=ArgumentDefaultsHelpFormatter, prog="dotfiles")
        self.parser.add_argument('--local-dir', default=f"{HOME_DIR}/.local", help="base directory for install", metavar="", type=str)
    
    def parse_args(self) -> ProgramNamespace:
        return self.parser.parse_args(namespace=ProgramNamespace())
