#!/usr/bin/env zsh

set -eu -o pipefail

TARGET_DIR=~/.dotfiles
if [ ! -d "$TARGET_DIR" ]; then
  git clone https://github.com/joshunrau/dotfiles.git "$TARGET_DIR" && cd "$TARGET_DIR"
else
  cd "$TARGET_DIR" && git pull
fi

cd "$TARGET_DIR" && python dotfiles --help
