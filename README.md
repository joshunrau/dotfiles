# Usage

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply joshunrau
```

# Development Setup on New Machine (MacOS)

## Prerequisites

First, install Xcode Command Line Tools, Homebrew, and iTerm2.

## Install Packages

```shell
brew install chezmoi micro pyenv pyenv-virtualenv nvm fd tldr
```

## Apply Config

```shell
chezmoi init https://github.com/joshunrau/dotfiles.git
chezmoi apply
```

## Install Fonts (iTerm2)

```shell
p10k configure
```
## Setup Node.js

```
nvm install --lts
corepack enable
```

## Install Python

```
# Replace 3.11 with whatever is the newest version
pyenv install 3.11
pyenv global 3.11
```
