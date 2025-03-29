# 🛠️ My Dotfiles

This repository contains my personal dotfiles for macOS and Zsh.

## 🚀 Installation

Run the following commands to set up the dotfiles on a new machine:

```sh
git clone --bare git@github.com:yourusername/dotfiles.git $HOME/.dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
dot checkout
dot config --local status.showUntrackedFiles no
```

## 📂 What's Included?

- `.zshrc` - My Zsh configuration
- `.gitconfig` - My Git aliases and settings
- `bin/` - Custom scripts
and more to come...

## 🔄 Syncing Changes

After making updates to your dotfiles, commit and push them:

```sh
dot add .zshrc
dot commit -m "Updated Zsh configuration"
dot push origin main
```

## 🛑 Warning

⚠️ Be careful when running `dot checkout -f`, as it overwrites existing files in your home directory.

(for me - https://chatgpt.com/c/67b85826-7a2c-800b-8ecf-957a71bdcada)
