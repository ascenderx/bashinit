#!/bin/bash

# Generate links for the files in ./home/user/
echo "Generating links..."
pushd home/user > /dev/null
for f in *
do
  if [[ -f $f ]]
  then
    echo ":: $f -> $HOME/.$f"
    ln -s $(pwd)/$f ~/.$f
  fi
done
popd > /dev/null
