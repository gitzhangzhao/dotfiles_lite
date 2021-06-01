#!/bin/zsh
# File              : .zshrc
# Author            : zhangzhao <zhangzhao@ihep.ac.cn>
# Date              : 05.06.2020
# Last Modified Date: 11.04.2021
# Last Modified By  : zhangzhao <zhangzhao@ihep.ac.cn>
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=/usr/local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/root/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="gallois"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting zsh-autosuggestions git extract vi-mode colored-man-pages zsh_reload sudo z web-search last-working-dir)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 # if [[ -n $SSH_CONNECTION ]]; then
 #   ZSH_THEME='cloud'
 # else
 #    ZSH_THEME='cloud'
 # fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias login="ssh root@39.101.136.33"
# alias mountssh='sshfs root@39.101.136.33:/home /home/zhangzhao/sshfs'
alias rm="trash-put" 
alias p=pwd
alias wicd="wicd-client"
alias ps="ps -ef"
alias k9='kill -9'
alias hibernate='systemctl hibernate'
alias suspend='systemctl suspend'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias du='ncdu -2'
alias al='apt list --upgradable'
alias au='date>>$HOME/zhangzhao/dotfiles/apt.log && echo "sudo apt update">>$HOME/zhangzhao/dotfiles/apt.log && sudo apt update | tee -a $HOME/zhangzhao/dotfiles/apt.log && echo "-----------------------------------------------------------------------------------" >> $HOME/zhangzhao/dotfiles/apt.log'
alias ag='date>>$HOME/zhangzhao/dotfiles/apt.log && echo "sudo apt dist-upgrade">>$HOME/zhangzhao/dotfiles/apt.log && sudo apt dist-upgrade | tee -a $HOME/zhangzhao/dotfiles/apt.log && echo "-----------------------------------------------------------------------------------" >> $HOME/zhangzhao/dotfiles/apt.log'
alias search='sudo apt search -n'
alias ap='sudo apt purge'
alias aa='date>>$HOME/zhangzhao/dotfiles/apt.log && echo "sudo apt autopurge">>$HOME/zhangzhao/dotfiles/apt.log && sudo apt autopurge| tee -a $HOME/zhangzhao/dotfiles/apt.log && echo "-----------------------------------------------------------------------------------" >> $HOME/zhangzhao/dotfiles/apt.log'
alias send='blueman-sendto'
alias blue='blueman-manager'
alias pgrep='pgrep -a'
alias hexdump='hexyl'
alias windows="remmina -c ~/zhangzhao/dotfiles/group_rdp_debian2win10_192-168-137-1.remmina"
alias ip="ip --color"

#
#
#Key bindings
bindkey '`' autosuggest-accept
#
#
