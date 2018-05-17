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
alias lx='ls -hF -x --color=auto --group-directories-first'
alias ll='ls -hF -o --color=auto --group-directories-first'
alias lR='ls -hF -R --color=auto --group-directories-first'
alias la='ls -hF -o -a --color=auto --group-directories-first'

# Set directory colors in ls to cyan
export LS_COLORS=$LS_COLORS:'di=1;36'

# Get ANSI colors
source ~/.bash_colors

# Custom prompt
export PS1="$_lyellow\u $_lcyan\W $_lgreen$ $_reset"
export PS2="$_LGreen --> $_Reset"

# Set clear to \033c
alias clear='echo -ne "\033c"'
alias pclear='echo -ne "\033c"; echo -ne "\033[3J"'

# load other scripts
source ~/.bash_scripts

# Directory memory commands
alias setlwd='echo $(pwd) > ~/.lastdir'
alias getlwd='pushd $(cat ~/.lastdir) >> /dev/null'

# Shortcut: crouton
alias xbash="sudo enter-chroot -n xenial"
alias xunity="sudo startunity"
alias xgnome="sudo enter-chroot gnome-session-wrapper gnome-flashback-metacity"

# Startup commands
cd ~

