zstyle :compinstall filename $HOME/.zshrc

fpath=($HOME/.share/zsh-completions ~/.zsh/completion $fpath)

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

[[ -f $HOME/.zshrc.local ]] && \
  source $HOME/.zshrc.local


source $HOME/.share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.share/zsh-history-substring-search/zsh-history-substring-search.zsh && \

HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=white,bold,underline'

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
