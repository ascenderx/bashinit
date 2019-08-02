#!/bin/bash

# Generate links for the files in ./home/user/
echo "Generating links..."
pushd home/user 2> /dev/null
for $f in .*
do
  if [[ -f $f ]]
  then
    echo ":: $f -> $HOME/.$f"
    cp $f ~/.$f
  fi
done
popd 2> /dev/null
