# Dotfiles

This repository contains my dotfiles managed with [`chezmoi`](https://www.chezmoi.io/).

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
