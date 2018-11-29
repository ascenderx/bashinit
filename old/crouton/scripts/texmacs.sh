#!/bin/bash

export TEXMACS_PATH=/usr/lib/texmacs
export PATH=$PATH:$TEXMACS_PATH/bin/

pushd $TEXMACS_PATH > /dev/null &&\
bin/texmacs &
popd > /dev/null
