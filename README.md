dotfiles
========

Local dotfiles for use with
[thoughbot dotfiles](https://github.com/thoughtbot/dotfiles)


Requirements
------------

Set the shell to zsh:

    chsh -s $(which zsh)

Update brew:

    brew update
    brew install caskroom/cask/brew-cask

Install Inconsolata-dz for Powerline

    brew tap caskroom/fonts
    brew cask install font-inconsolata-dz-for-powerline

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install [antigen](https://github.com/zsh-users/antigen) to handle zsh plugins:

    git clone https://github.com/zsh-users/antigen.git ~/.antigen


Installation
------------

Clone [thoughbot dotfiles](https://github.com/thoughtbot/dotfiles):

    git clone git://github.com/thoughtbot/dotfiles.git ~/.dotfiles

Clone this repo:

    git clone git://github.com/jsntv200/dotfiles.git ~/.dotfiles-local

Install the dotfiles:

    env RCRC=$HOME/.dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable
`RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future
runs of `rcup`). [See
example](https://github.com/thoughtbot/dotfiles/blob/master/rcrc).

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.

After install set iTerm to load preferences from ~/.iterm
