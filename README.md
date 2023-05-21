# dotfiles

## Setup (MacOS)

### Install Packages

```shell
brew install chezmoi pyenv pyenv-virtualenv
```

### Apply Config

```shell
chezmoi init https://github.com/joshunrau/dotfiles.git
chezmoi apply
```

### Install Fonts (iTerm2)

```shell
p10k configure
```

