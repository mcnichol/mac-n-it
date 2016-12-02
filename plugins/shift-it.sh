#!/usr/bin/env bash

brew install tccutil
brew cask install shiftit
sudo tccutil --insert "org.shiftitapp.ShiftIt" # Enable Accessibility Settings
loginitems -a "ShiftIt" # Start on login
open /Applications/ShiftIt.app