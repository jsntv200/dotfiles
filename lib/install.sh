#!/bin/bash

info() {
  echo "$(tput setaf 4)---> $1"
}

# https://brew.sh
info "Installing brew"
/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)

info "Installing dependencies from Brewfile"
curl -o /tmp/Brewfile https://raw.githubusercontent.com/jsntv200/dotfiles/master/lib/Brewfile
brew bundle --file /tmp/Brewfile

# https://github.com/tarjoilija/zgen
info "Installing zgen"
git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen

# https://github.com/thoughtbot/dotfiles
info "Checkout thoughtbot dotfiles"
git clone git://github.com/thoughtbot/dotfiles.git ${HOME}/.dotfiles

info "Checkout dotfiles.local"
git clone git://github.com/jsntv200/dotfiles.git ${HOME}/.dotfiles-local

info "Installing dotfiles"
env RCRC=$HOME/.dotfiles-local/rcrc rcup

# https://github.com/asdf-vm/asdf-ruby
info "Installing asdf-ruby"
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# https://github.com/asdf-vm/asdf-nodejs
info "Installing asdf-nodejs"
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

# https://github.com/twuni/asdf-yarn
info "Installing asdf-yarn"
asdf plugin-add yarn

# https://github.com/smashedtoatoms/asdf-postgres
info "Installing asdf-postgres"
asdf plugin-add postgres

info "Install versions specified in .tool-versions"
asdf install

info "Install fonts to ~/Library/Fonts"
tar -xzvf ${HOME}/.dotfiles-local/lib/fonts.tar.gz -C ${HOME}/Library/Fonts

info "Starting redis"
brew services start redis
