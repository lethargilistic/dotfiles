# Path to your oh-my-zsh installation.
export ZSH=/home/mike/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kennethreitz"

# case-sensitive completion.
CASE_SENSITIVE="false"

# hyphen-insensitive completion. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# how often to auto-update (in days)?
export UPDATE_ZSH_DAYS=7

# enable colors in ls.
DISABLE_LS_COLORS="false"

# enable auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

#  display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# set the command execution time stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# load plugins? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi
###################################################
# End of Oh My Zsh config
###################################################

# history settings
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=2000000
setopt appendhistory nomatch notify
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/mike/.zshrc'

autoload -Uz compinit
compinit

# load aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
