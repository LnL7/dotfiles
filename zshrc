zstyle :compinstall filename $HOME/.zshrc

fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit     && compinit
autoload -Uz bashcompinit && bashcompinit

for function in ~/.zsh/functions/*; do
  source $function
done

set completion-ignore-case on
set show-all-if-ambiguous on

# source $HOME/.zsh/autosuggestions/autosuggestions.zsh
# zle-line-init() {
#   zle autosuggest-start
# }
# zle -N zle-line-init

# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
# source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
[[ -f $HOME/.zsh/z/z.sh  ]] && source $HOME/.zsh/z/z.sh
