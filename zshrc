#vi mode in shell
bindkey -v

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
ZSH_THEME="ashlock"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy/mm/dd"


plugins=(git)

# User configuration

export PATH=$HOME/bin:$HOME/.local/bin:$HOME/.local/lib:/usr/local/bin:/usr/share:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

#virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/lib/python3.4/site-packages/virtualenvwrapper.sh


