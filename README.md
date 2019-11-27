dotfiles
========

Local dotfiles for use with
[thoughbot dotfiles](https://github.com/thoughtbot/dotfiles)


Installation
------------

Set the shell to zsh:

    chsh -s $(which zsh)

Clone [thoughbot dotfiles](https://github.com/thoughtbot/dotfiles):

    git clone git://github.com/thoughtbot/dotfiles.git ~/.dotfiles

Clone this repo:

    git clone git://github.com/jsntv200/dotfiles.git ~/.dotfiles-local

Install the dotfiles:

    env RCRC=$HOME/.dotfiles-local/rcrc rcup


Post Installation
-----------------

Set iTerm to load preferences from ~/.iterm & set the font.
