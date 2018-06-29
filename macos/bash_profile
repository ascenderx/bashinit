# Interactive options
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Human-readable figures
alias df='df -h'
alias du='du -h'

# Show differences in color
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Shortuct for directory listings
alias lx='ls -FGx'
alias ll='ls -FGho'
alias lr='ls -FGR'
alias la='ls -AhFGo'

# Set directory colors
export CLICOLOR=TRUE
export LSCOLORS="gxfxcxdxcxgxgxgxgxgxgx"

# Include color variables for formatted output & prompt
source ~/.bash_colors

# Custom prompt
export PS1="$_lyellow\u $_lcyan\W $_lgreen$ $_reset"
export PS2="$_LGreen --> $_Reset"

# Clear scrollback
alias clear='echo -ne $_Clear'

# Load other scripts
source ~/.bash_scripts

# Directory memory commands
alias setlwd='echo $(pwd) > ~/.lastdir'
alias getlwd='pushd $(cat ~/.lastdir) >> /dev/null'

### Commands to run upon terminal execution
cd ~
echo -ne "$_LCyan@$_LRed$HOSTNAME$_Reset\n"
