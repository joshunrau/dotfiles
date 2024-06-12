# Dotfiles

This repository hosts my personal dotfiles configuration, managed via chezmoi.

## Install

### Arch Linux

```sh
pacman -S bandwhich bat chezmoi dust fd htmlq imagemagick jless libwebp lsd micro procs ripgrep sd tokei xsel
chezmoi init --apply --ssh joshunrau
```

### MacOS

```sh
brew install bandwhich bash bat chezmoi dust fd gcc@13 htmlq imagemagick jless lsd micro procs sd tokei webp xsel xz
chezmoi init --apply joshunrau
```

## Update

```sh
chezmoi update --apply
```