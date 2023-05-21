# Development Setup on New Machine (MacOS)

## Prerequisites

First, install Xcode Command Line Tools, Homebrew, and iTerm2.

## Install Packages

```shell
brew install chezmoi pyenv pyenv-virtualenv micro
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

