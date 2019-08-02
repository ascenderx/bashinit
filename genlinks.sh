#!/bin/bash

# Generate links for the files in ./home/user/
echo "Generating links..."
pushd home/user > /dev/null
for f in *
do
  if [[ -f $f ]]
  then
    echo ":: $f -> $HOME/.$f"
    cp $f ~/.$f
  fi
done
popd > /dev/null
