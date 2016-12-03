#!/usr/bin/env bash

msg "Fetching Dependencies"
source "${SCRIPT_FOLDER}/dependencies.sh"
msg "Dependencies Loaded Successfully"

source "${PLUGIN_FOLDER}/oh-my-zsh.sh"

cp ${RC_FOLDER}/.inputrc ~/.inputrc