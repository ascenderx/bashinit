# .bashrc

#####################################
# The following code was taken from #
#  the default Ubuntu .bashrc file  #
#####################################

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# show differences in colour
alias grep='grep --color'
alias egrep='egrep --color=auto'                
alias fgrep='fgrep --color=auto'                

# Some shortcuts for different directory listings
alias ls='ls -hF -l --color=auto'               # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias la='ls -l -A'                             # all but . and ..

# Set title
settitle () 
{ 
  echo -ne "\e]2;$@\a\e]1;$@\a"; 
}

#####################################
# The following was taken from the  #
# Udacity git course and is used to #
#    enhance git functionality      #        
#####################################
# source /home/downerj/.git-completion.bash
# source /home/downerj/.git-prompt.sh

#####################################
# The following code was written by #
#           James D. Downer         #
#####################################

# Include color variables for formatted output and prompt
source /home/downerj/.bash_colors

# Include custom git commands
source /home/downerj/.git_commands

# Customize prompt
if [ "$SSH_TTY" ]
then
    export PS1="$_lblue[$_lcyan\W$_lblue] $_lgreen$ $_reset"
else
    # export PS1="$_lblue[$_lcyan\W$_lblue]$_dyellow\$(__git_ps1) $_lgreen$ $_reset"
    export PS1="$_lblue[$_lcyan\W$_lblue] $_lgreen$ $_reset"
    echo -ne "$_LBlue[$_LYellow$USER$_LBlue@$_LRed$HOSTNAME$_LBlue]\n"
fi
export PS2="$_LGreen --> $_Reset"

# Set directory colors in ls to white
LS_COLORS=$LS_COLORS:'di=1;36:' ; export LS_COLORS

# Set 'clear' to clear all scrollback
alias clear='echo -ne "\033c"'

# Add Scripts folder to path (Ubuntu)
# export PATH=$PATH:/home/downerj/Scripts

# Add Cling to PATH
export PATH=$PATH:/usr/lib/cling/bin

# Set Python/Python3 to run ANSI commands on startup
export PYTHONSTARTUP="/home/downerj/.python/initsys.py"
export PYTHONPATH=$PYTHONPATH:"/home/downerj/.python/"

# Set lynx homepage to Google
export WWW_HOME="www.google.com"

# Command: see current date & time
alias now='date "+<%j:%W> [%a %m/%d/%Y] %H:%M"'

# Link: run JavaREPL
alias javarepl="pushd /usr/lib/javarepl > /dev/null && java -jar javarepl.jar ; popd > /dev/null"

# Set TeXmacs path variables
export TEXMACS_PATH=/usr/lib/TeXmacs
export PATH=$PATH:$TEXMACS_PATH/bin

### Bash startup script ###

