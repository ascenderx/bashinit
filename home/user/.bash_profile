#!/bin/bash

##########
# This file is meant for login Bash shells (e.g. SSH terminals on Linux and
# BSD as well as normal Terminal.app sessions on macOS).
#
# Since we don't want to maintain separate config files, this file will simply
# import .bashrc which will then check if it's read in an interactive shell.
##########

source .bashrc
