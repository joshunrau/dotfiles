# Dotfiles

This repository hosts my personal dotfiles configuration, managed via chezmoi.

## Install

### Arch Linux

```sh
pacman -S bandwhich bat chezmoi dust fd htmlq jless lsd micro procs ripgrep sd tokei xsel
chezmoi init --apply --ssh joshunrau
```

### MacOS

```sh
brew install bandwhich bash bat chezmoi dust fd gcc@13 htmlq jless lsd micro procs sd tokei xsel xz
chezmoi init --apply joshunrau
```

## Update

```sh
chezmoi update --apply
```