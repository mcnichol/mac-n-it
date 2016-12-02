#!/usr/bin/env bash

msg "Fetching Dependencies"
source "$SCRIPT_FOLDER/dependencies.sh"
msg "Dependencies Loaded Successfully"

cp $RC_FOLDER/.inputrc ~/.inputrc