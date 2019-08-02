#!/bin/bash

# Check command-line flags.
FORCED=
for arg in "$*"
do
  case $arg in
    *-f*) FORCED="y" ;;
  esac
done

# Uncomment the files you want to link.
FILES=( \
  "bashfmt" \
  "bash_profile" \
  "bashrc" \
  "bashutils" \
  "lscolors-linux" \
#  "lscolors-bsd" \
  "profile" \
  "vimrc" \
  "Xresources" \
)

# Iterate through the files and link them.
for f in ${FILES[@]}
do
  LINK="$HOME/.$f"
  TARGET="$PWD/home/user/$f"
  
  # Check to see if link/file already exists.
  if [[ -L $LINK ]] || [[ -f $LINK ]] 
  then
    # Confirm existing file replacement if -f flag was not set.
    if [[ -z $FORCED ]]
    then
      echo -n "Replace $LINK? [y/N] "
      read val
      case $val in
        *y*) ;&
        *Y*) ;;
        *) continue ;;
      esac
    fi
    
    rm -f $LINK
  fi
  
  # Generate the symbolic link.
  echo ":: $TARGET -> $LINK"
  ln -s $TARGET $LINK
done
