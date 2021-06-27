export HISTSIZE=1000000 
export SAVEHIST=1000000 
export HISTFILE="$HOME/.cache/zsh/history"

autoload -U compinit && compinit -u; 
zstyle ":completion:*" menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)

bindkey -v
export KEYTIMEOUT=20
autoload edit-command-line; zle -N edit-command-line

function vi-yank-xclip {
	zle vi-yank 
	echo "$CUTBUFFER" | xclip 
}

zle -N vi-yank-xclip

bindkey -M vicmd 'y' vi-yank-xclip
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line 
bindkey "^V" edit-command-line 									
bindkey "^?" backward-delete-char
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M viins 'kj' vi-cmd-mode
bindkey -M menuselect "h" vi-backward-char
bindkey -M menuselect "j" vi-down-line-or-history
bindkey -M menuselect "k" vi-up-line-or-history
bindkey -M menuselect "l" vi-forward-char
bindkey "^p" vi-up-line-or-history 
bindkey "^n" vi-down-line-or-history
bindkey -s "^o" 'fop^M' 
bindkey -s "^f" 'fcd^M' 

#alias
alias fcd='cd $(find -type d | fzf)'
alias frm='rm -i $(ls | fzf -m)'
alias fmv='mv $(ls | fzf -m)'
alias fop='xdg-open $(find | fzf)'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias ll='ls -lah'
alias o='xdg-open'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'

#plugin
source $ZPLUG/zsh-z/zsh-z.plugin.zsh
source $ZPLUG/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZPLUG/zsh-fzf-history-search/zsh-fzf-history-search.zsh
source ~/.config/zsh/bureau.zsh-theme
