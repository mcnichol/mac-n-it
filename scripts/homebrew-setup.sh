#!/usr/bin/env bash

msg "Installing Homebrew - The Missing Package Manager for Mac"

if hash brew 2>/dev/null; then
  msg "Homebrew is already installed!"
else
  msg "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

msg "Setting up Brew Cask for App Management/Install"
brew tap caskroom/cask

