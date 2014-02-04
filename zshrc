zstyle :compinstall filename $HOME/.zshrc

fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit     && compinit
autoload -Uz bashcompinit && bashcompinit

for function in ~/.zsh/functions/*; do
  source $function
done

set completion-ignore-case on
set show-all-if-ambiguous on

source $HOME/.zshrc.aliases
source $HOME/.zshrc.bindkeys
source $HOME/.zshrc.exports
source $HOME/.zshrc.prompt
source $HOME/.zshrc.setopts

HISTFILE=$HOME/.histfile
HISTSIZE=4096
SAVEHIST=4096

export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
