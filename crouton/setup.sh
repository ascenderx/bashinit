#!/bin/bash

#####################################################################
# This script will setup Ubuntu for Crouton on ChromeOS after it
# is installed.
#####################################################################

confirm() {
   echo -n "Run \"$*\" [y/n]? "
   read -r answer
   if [ "$answer" == "Y" ] || [ "$answer" == "y" ]
   then
      $*
   else
      echo "Skipping \"$*\"..."
      echo "Skipped \"$*\"..." >> ~/skipped.log
   fi
   
   echo -e "######################################################\n\n"
}

# GNOME terminal (default for Ubuntu)
confirm sudo apt-get install gnome-terminal

# update locale to make GNOME terminal work


# install CLING interactive C++ interpreter


# install Python 3


# install JDK


# 
