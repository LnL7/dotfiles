# Setup fzf
# ---------
if [[ ! "$PATH" =~ "/Users/lnl/.fzf/bin" ]]; then
  export PATH="$PATH:/Users/lnl/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" =~ "/Users/lnl/.fzf/man" && -d "/Users/lnl/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/Users/lnl/.fzf/man"
fi

# Auto-completion
# ---------------
# [[ $- =~ i ]] && source "/Users/lnl/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/Users/lnl/.fzf/shell/key-bindings.zsh"

