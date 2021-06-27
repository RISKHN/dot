# Setup fzf
# ---------
if [[ ! "$PATH" == */home/rns/.local/share/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/rns/.local/share/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/rns/.local/share/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/rns/.local/share/fzf/shell/key-bindings.bash"
