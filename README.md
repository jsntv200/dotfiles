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

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install [zgen](https://github.com/tarjoilija/zgen) to handle zsh plugins:

    git clone https://github.com/tarjoilija/zgen.git ~/.zgen


Installation
------------

Clone [thoughbot dotfiles](https://github.com/thoughtbot/dotfiles):

    git clone git://github.com/thoughtbot/dotfiles.git ~/.dotfiles

Clone this repo:

    git clone git://github.com/convexstyle/dotfiles.git ~/.dotfiles-local

Install the dotfiles:

    env RCRC=$HOME/.dotfiles-local/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable
`RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future
runs of `rcup`). [See
example](https://github.com/thoughtbot/dotfiles/blob/master/rcrc).

You should run `rcup` after pulling a new version of the repository to symlink
any new files in the repository.


Post Installation
-----------------

Install Inconsolata-dz for Powerline

    brew install caskroom/cask/brew-cask
    brew tap caskroom/fonts
    brew cask install font-inconsolata-dz-for-powerline

After installation set iTerm to load preferences from ~/.iterm & set the font.
