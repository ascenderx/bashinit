#####################################################################
# Custom bash configuration settings for non-login shells 
#####################################################################

# If not running interactively, then don't do anything
case $- in
   *i*) ;;
     *) return;;
esac

# Force query for every file-removal
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# Human-readable figures
alias df="df -h"
alias du="du -h"

# Show differences in color
alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"

# Shortcuts for directory listings
alias ls="ls --color=auto"
alias lx="ls -hFx --color=auto --group-directories-first"
alias ll="ls -hFo --color=auto --group-directories-first"
alias lr="ls -hFR --color=auto --group-directories-first"
alias la="ls -AhFo --color=auto --group-directories-first"
alias l1="ls -hF1 --color=auto --group-directories-first"
alias l2="ls -AhF1 --color=auto --group-directories-first"

# Set directory colors in "ls" to cyan
export LS_COLORS=$LS_COLORS:"di=1;36"

# ANSI color formatting codes
if [ -f ~/.bash_colors ]
then
   source ~/.bash_colors
fi

# Custom prompt
export PS1="$_lyellow\u $_lcyan\W $_lgreen$ $_reset"
export PS2="$_LGreen --> $_Reset"

# Set clear scrollback
export CLEAR="\x1bc"
export PUTTY_CLEAR="\x1b[3J"
export CLEAR_HEADER="$_LGreen$HOSTNAME $_LCyan`tty`$_Reset"
alias clear="echo -ne \"$CLEAR$CLEAR_HEADER\n\""
alias pclear="echo -ne \"$CLEAR$CLEAR_HEADER\n\"; echo -ne \"$PUTTY_CLEAR\""

# Load other custom scripts
touch ~/.bash_scripts
source ~/.bash_scripts

# Directory memory commands
alias setlwd='echo $(pwd) > ~/.lastdir'
alias getlwd='if [ -f ~/.lastdir ]; then pushd $(cat ~/.lastdir) >> /dev/null; fi'

# Print $CLEAR_HEADER upon terminal execution
echo -ne "$CLEAR_HEADER\n"

# Don't put duplicate lines or lines starting with space in history
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length, see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command, and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories
shopt -s globstar

