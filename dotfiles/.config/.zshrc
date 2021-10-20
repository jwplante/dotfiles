# zsh config
# jwplante

# Lines configured by zsh-newuser-install
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

#
# Prompt
#
PROMPT='%F{cyan}%n%f in %F{13}%~%f -> '

# 
# Aliases
#
alias ll='ls -lh'
alias la='ls -la'
alias l='ls'


# Git prompt, taken from this tutorial
# https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{129}(%b)%r%f'
zstyle ':vcs_info:*' enable git


#
# Plugins
#
source $ZDOTDIR/antigen.zsh

# Grabbing some plugins from Oh my ZSH (but not the whole thing)
antigen bundle robbyrussell/oh-my-zsh lib/

# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Autosuggestions
antigen bundle zsh-users/zsh-autosuggestions

# Fish-like History search
antigen bundle zsh-users/zsh-history-substring-search

# Git Plugin
antigen bundle git

# JavaScript Related plugins
antigen bundle node
antigen bundle npm

# Python related plugins
antigen bundle pip
antigen bundle zzag/zsh-conda

# Tell Antigen that you're done.
antigen apply
