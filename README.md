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

## Update

```sh
chezmoi update --apply
```
