#!/usr/bin/env bash

msg "Updating Files"
brew update
brew cask update

msg "Ugrading Homebrew"
brew upgrade

msg "Cleanup and Clearing Cache"
brew cleanup
brew cask cleanup
