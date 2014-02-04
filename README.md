# Dotfiles

## Requirements

Set zsh as your login shell

    chsh -s $(which zsh)

## Installation

Clone onto your machine

    git clone git://github.com/LnL7/dotfiles.git

Install [rcm](https://github.com/thoughtbot/rcm):

    brew bundle

Install:

    rcup -d dotfiles -x README.md

This will create symlinks for config files in your home directory. The
`-x` options, which exclude the `README.md` and `LICENSE` files, are
needed during installation but can be skipped once the `.rcrc`
configuration file is symlinked in.

You can safely run `rcup` multiple times to update:

    rcup
