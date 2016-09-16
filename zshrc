zstyle :compinstall filename $HOME/.zshrc

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*:cd:*' ignore-parents parent pwd

fpath=($HOME/.share/zsh-completions ~/.zsh/completions $fpath)

autoload -Uz colors       && colors
autoload -Uz compinit     && compinit
autoload -Uz bashcompinit && bashcompinit

for function in ~/.zsh/functions/*; do
  source $function
done

set completion-ignore-case on
set show-all-if-ambiguous on

[ -z $NIX_MYENV_NAME ] && [ -z $IN_NIX_SHELL ] && \
  source $HOME/.zshrc.exports

source $HOME/.git.aliases
source $HOME/.zshrc.aliases
source $HOME/.zshrc.bindkeys
source $HOME/.zshrc.prompt
source $HOME/.zshrc.setopts

HISTFILE=$HOME/.histfile
HISTSIZE=4096
SAVEHIST=4096

export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

[[ -f $HOME/.zshrc.local ]] && \
  source $HOME/.zshrc.local
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
