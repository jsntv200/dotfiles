# Antigen
if [ -f ~/.antigen/antigen.zsh ]; then
  source ~/.antigen/antigen.zsh

  # Use oh-my-zsh
  antigen use oh-my-zsh

  # oh-my-zsh bundles
  antigen bundle history-substring-search
  antigen bundle zsh_reload

  # Third party bundles
  antigen bundle zsh-users/zsh-completions src
  antigen bundle zsh-users/zsh-syntax-highlighting

  # Load the theme
  antigen bundle mafredri/zsh-async
  antigen bundle sindresorhus/pure

  # Tell antigen that you're done
  antigen apply
fi
