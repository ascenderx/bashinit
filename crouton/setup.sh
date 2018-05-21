#!/bin/bash

#####################################################################
# This script will setup Ubuntu for Crouton on ChromeOS after it
# is installed.
#####################################################################

#####################################################################
# Confirm execution of trailing script 
#####################################################################
confirm() {
   echo -n "Run \"$*\" [Y/n]? "
   read -r answer
   if [ "$answer" == "Y" ] || [ "$answer" == "y" ] || [ "$answer" == "" ]
   then
      $*
   else
      echo "Skipping \"$*\"..."
      echo "Skipped \"$*\"..." >> ~/skipped.log
   fi
   
   echo -e "######################################################\n\n"
}

## erase skipped.log (user confirmation needed)
rm -i ~/skipped.log

# move to downloads/install
pushd ~/Downloads > /dev/null
if [ ! -d "install" ]
then 
   mkdir "install"
fi
cd "install"

# GNOME terminal (default for Ubuntu)
confirm sudo apt-get install gnome-terminal

# cURL
confirm sudo apt-get install curl

# update locale to make GNOME terminal work
confirm sudo apt-get install language-pack-en locales
confirm sudo localectl set-locale LANG="en_US.UTF-8"

# CLING interactive C++ interpreter from CERN
tempURL="https://root.cern.ch/download/cling//cling_2018-05-21_ubuntu16.tar.bz2"
confirm curl $tempURL -o cling.tar.bz2 &&\
confirm bzip2 -d cling.tar.bz2 &&\
confirm tar -xf cling.tar &&\
rm -i cling.tar
confirm sudo mv cling /usr/lib/ &&\
confirm sudo update-alternatives --install "/bin/cling" "cling" "/usr/lib/cling/bin/cling" 1

# Python 3 and IDLE
confirm sudo apt-get install idle3 python3

# OpenJDK
confirm sudo apt-get install openjdk-8-jdk

# PHP & PHP development server
confirm sudo apt-get install php-fpm php

# Node.js
confirm sudo apt-get install nodejs

# GNU Text Editor
confirm sudo apt-get install gedit

# VIM Text Editor
confirm sudo apt-get install vim

# TeXmacs WYSIWYG LaTeX editor
tempURL="www.texmacs.org/Download/ftp/tmftp/generic/TeXmacs-1.99.6-B.tar.gz"
confirm curl $tempURL -o texmacs.tar.gz &&\
confirm gunzip texmacs.tar.gz &&\
confirm tar -xf texmacs.tar &&\
rm -i texmacs.tar
confirm sudo mv texmacs /usr/lib/ &&\
confirm echo 'export TEXMACS_PATH=/usr/lib/texmacs ; export PATH=$PATH:$TEXMACS_PATH/bin/ ; pushd $TEXMACS_PATH > /dev/null && bin/texmacs & && popd > /dev/null' > /usr/lib/texmacs/texmacs.sh &&\
confirm chmod u+x /usr/lib/texmacs/texmacs.sh &&\
confirm sudo update-alternatives --install "/bin/texmacs" "texmacs" "/usr/lib/texmacs/texmacs.sh" 1

# exit downloads/install
popd > /dev/null
