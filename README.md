# Dotfiles

This repository contains my dotfiles managed with [`chezmoi`](https://www.chezmoi.io/).

## Features
- My `zsh` config with [`powerlevel10k`](https://github.com/romkatv/powerlevel10k) and various plugins.
- Python and Node.js version management via `pyenv` and `nvm`.
- My `neovim` config based on [kickstart](https://github.com/nvim-lua/kickstart.nvim).

An installation script is included to install various utility packages (optional, supports MacOS and Arch Linux). When updating dotfiles via `chezmoi`, this script will automatically rerun whenever the package list changes.

## Setup

### MacOS

```sh
brew install chezmoi
chezmoi init --apply joshunrau
```

### Arch Linux

```sh
pacman -S chezmoi git zsh
chezmoi init --apply --ssh joshunrau
```

### Other Linux (Tested on Ubuntu 24.04)

First, install system dependencies and change the default shell to zsh:

```sh
apt-get install build-essential zsh
chsh -s $(which zsh)
```

Next, install Homebrew for Linux as follows:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' > .zshrc.local
source .zshrc.local
```

Now, install chezmoi:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply joshunrau
```

## Update

```sh
chezmoi update --apply
```
