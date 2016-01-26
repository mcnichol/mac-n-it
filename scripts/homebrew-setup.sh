#!/usr/bash

msg "Installing Homebrew - The Missing Package Manager for Mac"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

msg "Setting up Brew Cask for App Management/Install"
brew tap caskroom/cask
