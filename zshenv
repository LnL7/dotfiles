[ -z $NIX_MYENV_NAME ] && [ -z $IN_NIX_SHELL ] && \
  source $HOME/.zshrc.exports

source $HOME/.zshrc.aliases

[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
