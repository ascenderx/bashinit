#####################################################################
# Custom bash aliases functions, etc.
#####################################################################

# macOS App shortcuts
alias vscode="open -a \"Visual Studio Code\" $*"

# Local Binaries
export PATH=$PATH:~/Applications/localbin

# Cling (C++ repl from CERN)

# Android Bridge / Debugger
export PATH=$PATH:"~/Applications/Android Bridge"

# Sox (audio)

# Lua configuration & customized REPL
export PATH=$PATH:~/Applications/Lua/bin
touch ~/.config.lua
alias lui="lua -i ~/.config.lua"

# Lynx Home -> DuckDuckGo (Lite)
export WWW_HOME="https://ddg.gg/lite"

# Fork a specified process and suppress stderr
alias fork="$* 2> /dev/null &"

# Git sync (pull and then push)
alias git-sync="git pull origin master && git push origin master"

# Do a Git-pull in all specified directories
git-update() {
    for d in $*
    do
        if [[ -d "$d" ]] && [[ -d "$d/.git" ]]
        then
            echo $d
            pushd $d 2> /dev/null
            git pull github master || git pull origin master
            popd 2> /dev/null
        fi
    done
}

# Mount NTFS drive (example: Seagate Expansion)
alias mountntfs="sudo ntfs-3g -o auto_xattr /dev/disk2s1 ~/Seagate"
alias unmountntfs="sudo umount /dev/disk2s1"

# PostgreSQL
alias psqlserv="pg_ctl -D /usr/local/var/postgres $1"
alias psqlsetup="psqlserv && createdb"

# Alternate signout script using signals
# signout() {
#     read -p"Are you sure you want to sign out? (yes/NO) " answer
#     if [[ $answer == "yes" ]]
#     then
#         sudo pkill -SIGKILL -u $(whoami)
#     fi
# }

# Logout from Aqua session
alogout() {
    osascript -e "tell application \"SystemEvents\" to log out"
    builtin logout
}
