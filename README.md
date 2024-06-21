# Dotfiles

This repository hosts my personal dotfiles configuration, managed via chezmoi.

## Install

### Arch Linux

```sh
pacman -S chezmoi git zsh
chezmoi init --apply --ssh joshunrau
```

### MacOS

```sh
brew install chezmoi
chezmoi init --apply joshunrau
```

## Update

```sh
chezmoi update --apply
```
