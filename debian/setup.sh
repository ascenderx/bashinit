#!/bin/bash -w

#################################################
# CLEAR THE LOG IF NOT EMPTY
#################################################
ERRLOG="~/Downloads/error.log"
if [[ -f $ERRLOG ]] && [[ ! -z $ERRLOG ]]
then
    read -p"Do you want to erase the log file? " answer
    case $answer in
        y|Y|yes|YES)
            cat /dev/null > $ERRLOG
            ;;
    esac
else
    touch $ERRLOG
fi

#################################################
# FUNCTION : DO INSTALL
#################################################
sudoinst() {
    yes | sudo $* 2>> $ERRLOG
    
    # append a separator
    if [[ $? != 0 ]]
    then
        echo -ne "\n####################\n\n" >> $ERRLOG
    fi
}

#################################################
# UPDATE APT CACHE
#################################################
sudoinst apt update

#################################################
# SYSTEM APPS
#################################################

# Networking
sudoinst apt install curl wget dnsutils
sudoinst apt install openssh-server

# NeoFetch CLI Summary/Hello
sudoinst apt install neofetch

# NTFS (Windows File System)
sudoinst apt install ntfs-3g

# C Shell (tsch)
sudoinst apt install tcsh

# Directory Tree View
sudoinst apt install tree

# Virtual Lock for Terminal/Shell
sudoinst apt install vlock

# Zenity Interactive Forms
sudoinst apt install zenity

# Zip/Unzip
sudoinst apt install zip gzip bzip2 tar

#################################################
# APPEARANCE & THEMES
#################################################

# Terminus Font
sudoinst apt install xfonts-terminus

# Google Fonts: Fira Mono, Anonymous Pro, Inconsolata

# *Ubuntu Artwork & Wallpapers
sudoinst apt install lubuntu-artwork-* xubuntu-artwork xubuntu-wallpapers

# Icon Themes
sudoinst apt install tango-icon-theme lubuntu-icon-theme xubuntu-icon-theme

# mint-background, mint-themes, mint-x-icons mint-y-icons

#################################################
# DEVELOPER SOFTWARE
#################################################

# VCS & Bundling
sudoinst apt install git
sudoinst apt install maven ant gradle

# Editors
sudoinst apt install vim # vim, emacs, nano, pico, etc.
sudoinst apt install xed # xed, mousepad, leafpad, gedit, etc.

# C, C++
sudoinst apt install clang # gcc g++, clang, etc.
GLUT="3"
GLFW="3"
sudoinst apt install freeglut$GLUT freeglut$GLUT-dev libglfw$GLFW libglfw$GLFW-dev
NCURSES="5"
sudoinst apt install ncurses-base ncurses-bin libncurses$NCURSES

# Java, Kotlin, Groovy
sudoinst apt install default-jdk default-jdk-doc
sudoinst snap install kotlin --classic
sudoinst apt install groovy groovy-doc

# JavaScript: Node.js
sudoinst apt install nodejs npm
sudoinst npm install --global typescript @angular/cli express ejs 

# Android
sudoinst apt install adb

# PHP
PHP="7.2"
sudoinst apt install php$PHP php$PHP-fpm php$PHP-cli

# Perl
sudoinst apt install perl

# (Common) Lisp
sudoinst apt install clisp

# Haskell
sudoinst apt install haskell-platform

# Python 3
sudoinst apt install python3 pip3 idle3
sudoinst pip3 install pygame pyplot numpy

# Lua
LUA="5.3"
sudoinst apt install libreadline-dev
sudoinst apt install lua$LUA

# (Free) Pascal
sudoinst apt install fp-compiler

# (Postgre)SQL
sudoinst apt install postgresql

#################################################
# PRODUCTIVITY APPS
#################################################

# Office
sudoinst apt install libreoffice

# Web Browsing
sudoinst apt install firefox lynx

# Graphics
sudoinst apt install mtpaint gimp inkscape

#################################################
# GAMES
#################################################

# Windows Apps Container/Wrapper
sudoinst apt install wine

# MS-DOS
sudoinst apt install dosbox

# MegaMan Maker

# Simon G. Tantham's Puzzles
sudoinst apt install sgt-puzzles sgt-launcher

# Minecraft
sudoinst apt install minecraft

#################################################
# UPDATE APT CACHE
#################################################
sudoinst apt upgrade
