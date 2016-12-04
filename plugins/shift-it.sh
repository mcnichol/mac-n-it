#!/usr/bin/env bash

source "${PLUGIN_FOLDER}/tccutil.sh"
source "${PLUGIN_FOLDER}/loginitems.sh"

brew cask install shiftit
sudo tccutil --insert "org.shiftitapp.ShiftIt" # Enable Accessibility Settings
loginitems -a "ShiftIt" # Start on login
open /Applications/ShiftIt.app