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

# Set directory colors in ls to white
export LS_COLORS=$LS_COLORS:'di=1;36'

# Get ANSI colors
source ~/.bash_colors

# Custom prompt
export PS1="$_lyellow\u $_lcyan\W $_lgreen$ $_reset"
export PS2="$_LGreen --> $_Reset"

# Set clear to \033c
alias clear='echo -ne "\033c"'
alias pclear='echo -ne "\033c"; echo -ne "\033[3J"'

# Lock screen
alias lock='gnome-screensaver-command -l'

# Shortcut to JavaREPL
alias javarepl='java -jar /usr/lib/jvm/javarepl-428.jar'

# Shortcuts for SSH and SFTP
alias byuiSSH='ssh -X downerj@157.201.194.205 -p 215'
alias byuiSFTP='sftp -P 215 downerj@157.201.194.205'
alias byuiTunnel='ssh -L 1024:157.201.194.254:80 downerj@157.201.194.205 -p 215'

# lynx
export WWW_HOME='https://www.google.com'

# forking
alias execnew='gnome-terminal -e $*'

# TeXmacs setup
export TEXMACS_PATH='/usr/lib/texmacs'
export PATH=$PATH:$TEXMACS_PATH/bin

# Add scripts folder
export PATH=$PATH:~/scripts

# Directory memory commands
alias setlwd='echo $(pwd) > ~/.lastdir'
alias getlwd='pushd $(cat ~/.lastdir) >> /dev/null'

# Startup commands
cd ~
