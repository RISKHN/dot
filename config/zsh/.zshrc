export HISTSIZE=1000000 
export SAVEHIST=1000000 
export HISTFILE="$HOME/.cache/zsh/history"
export VOIDNSRUN_DIR=/glibc
export VOIDNSUNDO_BIN=/usr/local/bin/voidnsundo

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
bindkey "^p" vi-down-line-or-history 
bindkey "^n" vi-up-line-or-history
bindkey -s "^o" 'fop^M' 
bindkey -s "^f" 'fcd^M' 

#alias
alias mbsync="mbsync -c "$XDG_CONFIG_HOME"/isync/mbsyncrc"
alias quran='zathura ~/dox/boox/quran.pdf'
alias rustlings='~/.local/share/cargo/bin/rustlings'
alias fcd='cd $(find -type d | fzf)'
alias frm='rm -i $(ls | fzf -m)'
alias fmv='mv $(ls | fzf -m)'
alias fop='xdg-open $(find | fzf)'
alias o='xdg-open'
alias ll='ls -lh'
alias la='ls -lah'
alias hl='himalaya'
alias wiki='nvim -c VimwikiIndex'
alias ssf='import -window root'
alias ss='cd ~/dox/pix/ss'
alias pix='cd ~/dox/pix'
alias dow='cd ~/dow'
alias vid='cd ~/dow/vid'
alias dox='cd ~/dox'
alias dev='cd ~/dev'
alias pub='cd ~/.public'
alias pri='cd ~/.private'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias vpi='sudo xbps-install'
alias vpr='sudo xbps-remove'
alias vps='xbps-query -Rs'
alias vpl='xbps-alternatives -l'

#plugin
source $ZPLUG/zsh-z/zsh-z.plugin.zsh
source $ZPLUG/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
#source $ZPLUG/fzf/fzf.zsh
source $ZPLUG/zsh-fzf-history-search/zsh-fzf-history-search.zsh

PROMPT='%2~ '\$vcs_info_msg_0_'%# '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
#RPROMPT='%*'
zstyle ':vcs_info:git:*' formats '%F{245}(%b)%r%f '
zstyle ':vcs_info:*' enable git
