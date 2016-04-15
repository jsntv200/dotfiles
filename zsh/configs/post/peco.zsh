#peco
function peco-branch () {
  local branch=$(git branch -a | peco | tr -d ' ' | tr -d '*')
  if [ -n "$branch" ]; then
    if [ -n "$LBUFFER" ]; then
      local new_left="${LBUFFER%\ } $branch"
    else
      local new_left="$branch"
    fi
    BUFFER=${new_left}${RBUFFER}
    CURSOR=${#new_left}
  fi
}
zle -N peco-branch
bindkey '^xc' peco-branch



function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection
