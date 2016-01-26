#!/usr/bash

msg "Updating Files"
brew cask update
brew update

msg "Cleanup and Clearing Cache"
brew cask cleanup
brew cleanup
