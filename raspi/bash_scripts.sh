#####################################################################
# Custom bash aliases functions, etc.
#####################################################################

# Lua configuration & customized REPL
touch ~/.config.lua
alias lui="lua -i ~/.config.lua"

# Lynx Home -> DuckDuckGo (Lite)
export WWW_HOME="https://ddg.gg/lite"

# Start XFCE4 from CLI mode
alias xfce4="sudo systemctl start lightdm"

# Fork a specified process and suppress stderr
alias fork="$* 2> /dev/null &"

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

# Alternate signout script using signals
# signout() {
#    read -p"Are you sure you want to log out (yes/NO)? " answer
#    if [[ $answer == "yes" ]]
#    then
#        sudo pkill -SIGKILL -u $(whoami)
#    fi
# }

# Logout of XFCE4-Session
xlogout() {
    read -p"Are you sure you want to log out? (yes/NO)? " answer
    if [[ $answer == "yes" ]]
    then
        xfce4-session-logout -l
    fi
}

# Check battery (e.g. for CLI mode)
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -B1 percentage"

# Enforce US keyboard
if [[ "xterm" == $(tset -q) ]]; then setxkbmap us; fi
