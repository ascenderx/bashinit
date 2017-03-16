#!/bin/bash

############################################################
# The following code was taken from the Udacity git course #
# and is used to enhance git functionality                 #
############################################################

# source /Users/downerj/.git-completion.bash
# source /Users/downerj/.git-prompt.sh

#####################################################
# The following code was created by James D. Downer #
#####################################################

# Include color variables for formatted output & prompt
source .bash_colors

# Colorize prompt
export PS1="$_reset$_lblue[$_lcyan\W$_lblue] $_lgreen$ $_reset"
export PS2="$_reset$_lgreen --> $_reset"

# Set directory colors
export CLICOLOR=TRUE
export LSCOLORS="gxfxcxdxcxgxgxgxgxgxgx"

# Functions: Force confirmation before deleting files
alias rm='rm -i'

# Function: set 'ls' to long-list mode
alias ls='ls -l -G -F'

# Function: 'ls' with all file
alias la='ls -A'

# Function: display directory contents using less
alias lsl='ls | less'
alias lal='ls -A | less'

# Function: move to directory and list contents
go() {
   cd $1 && ls
}

# Functions: display day-of-year, week-of-year, date, time
alias now='date "+<%j:%W> [%a %m/%d/%Y] %H:%M"'
now_color() {
    DOY="$(date "+%j")"
    WOY="$(date "+%W")"
    DOW="$(date "+%a")"
    MONTH="$(date "+%m")"
    DAY="$(date "+%d")"
    YEAR="$(date "+%Y")"
    HOUR="$(date "+%H")"
    MIN="$(date "+%M")"
    SEC="$(date "+%S")"

    TIME="$_White<$_LGreen$DOY$_DGrey:$_LGreen$WOY$_White> [$_LYellow$DOW $_LYellow$MONTH$_White/$_LYellow$DAY$_White/$_LYellow$YEAR$_White] $_LCyan$HOUR$_White:$_LCyan$MIN$_Reset"

    echo -e $TIME
}

# Function: clear scrollback
alias clear='echo -ne $_Clear'

# Set Python/Python3 to run ANSI commands on startup
export PYTHONSTARTUP="/Users/downerj/.python/initsys.py"
export PYTHONPATH=$PYTHONPATH:"/Users/downerj/.python/"

# Set Lynx homepage as Google
export WWW_HOME='www.google.com'

# Script: Run Lynx
alias lynx='/Applications/Lynxlet.app/Contents/Resources/lynx/bin/lynx $*'

# Script: Convert Markdown file to HTML
# alias markdown='python ~/Documents/Scripts/markdown.py $*'

# Script: Run Java REPL
javarepl() {
    pushd /usr/bin > /dev/null
    java -jar javarepl.jar
    popd > /dev/null
}

# Script: Divert Emacs command to /Applications/Emacs.app
emacs() {
    # Nox/terminal mode
    # /Applications/Emacs.app/Contents/MacOS/Emacs -nw $*
    
    # GUI mode
    /Application/Emacs.app/Contents/MacsOS/Emacs $*
}

# Script: Run GEdit
gedit() {
    /Applications/gedit.app/Contents/MacOS/gedit $*
}

# Script: Run Text Edit
textedit() {
    /Applications/TextEdit.app/Contents/MacOS/TextEdit $*
}

### Commands to run upon terminal execution
echo -ne "$_LBlue[$_LYellow$USER$_LBlue@$_LRed$HOSTNAME$_LBlue]\n"
