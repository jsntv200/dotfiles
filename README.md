dotfiles
========

Local dotfiles for use with
[thoughbot dotfiles](https://github.com/thoughtbot/dotfiles)


Requirements
------------

Set the shell to zsh:

    chsh -s $(which zsh)

Install Inconsolata-dz for Powerline

    brew tap caskroom/fonts
    brew cask install font-inconsolata-dz-for-powerline

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Clone [antigen](https://github.com/zsh-users/antigen) for installing zsh plugins:

    git clone https://github.com/zsh-users/antigen.git ~/.antigen


Installation
------------

Clone this repo:

    git clone git://github.com/jsntv200/dotfiles.git ~/.dotfiles

Clone [thoughbot dotfiles](https://github.com/thoughtbot/dotfiles):

    git clone git://github.com/thoughtbot/dotfiles.git ~/.dotfiles-thoughtbot

Install the dotfiles:

    env RCRC=$HOME/.dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable
`RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future
runs of `rcup`). [See
example](https://github.com/thoughtbot/dotfiles/blob/master/rcrc).

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.

Additional Installs
-------------------

Update iTerm2 to the latest nightly release

    brew tap caskroom/versions
    brew cask install iterm2-nightly

Install Neovim to get full color vim in iTerm

    brew tap neovim/homebrew-neovim
    brew install --HEAD neovim

Link neovim to vim

    ln -s $HOME/.vim $HOME/.config/nvim
    ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim

After install set iTerm to load preferences from ~/.iterm
