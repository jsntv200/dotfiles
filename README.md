Dotfiles
==============================

Dotfiles for git, ruby, vim and zsh

Installation
------------

  1. Clone the repository:

        git clone --recursive git@github.com:jsntv200/dotfiles.git "${ZDOTDIR:-$HOME}/.dotfiles"

  2. Link the dotfiles:

        cd ~/.dotfiles && rake

  3. Install the submodules

        git submodule init && git submodule update
