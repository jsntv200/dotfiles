# zgen
# https://github.com/tarjoilija/zgen

if [ -f ${HOME}/.zgen/zgen.zsh ]; then
  source ${HOME}/.zgen/zgen.zsh

  # Watch for changes in this file and call `zgen reset`
  export ZGEN_RESET_ON_CHANGE=${HOME}/.dotfiles-local/zsh/configs/post/zgen.zsh

  if ! zgen saved; then
    zgen oh-my-zsh

    # If zsh-syntax-highlighting is bundled after zsh-history-substring-search,
    # they break, so get the order right.
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-completions src

    # oh-my-zsh plugins
    zgen oh-my-zsh plugins/zsh_reload
    zgen oh-my-zsh plugins/history
    zgen oh-my-zsh plugins/dotenv

    # Load the theme
    zgen load mafredri/zsh-async
    zgen load sindresorhus/pure

    # generate the init script from plugins above
    zgen save
  fi
fi
