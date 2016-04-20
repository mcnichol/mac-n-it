#!/usr/bash

msg "Updating Files"
brew cask update
brew update
msg "Finished Updating Brew"
brew upgrade
msg "Finished Upgrading Brew"

msg "Cleanup and Clearing Cache"
brew cask cleanup
brew cleanup
