#!/bin/bash
#Sourcing Script Settings and Functions
source ./config/common.functions
source ./config/common.config

msg "Got the ball.  Let's get Rolling"

# Code taken from https://gist.github.com/mokagio/b974620ee8dcf5c0671f
newsect "Checking Xcode CLI tools"
# Only run if the tools are not installed yet
# To check that try to print the SDK path
xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  msg "Xcode CLI tools not found. Installing them..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -i "$PROD" -v;
else
  msg "Xcode CLI tools OK"
fi

newsect "Installing Package Management Tools"
msg "Installing Homebrew - The Missing Package Manager for Mac"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

msg "Setting up brew Cask for App Management/Install"
brew tap caskroom/cask

msg "Setting up Node & NPM"
source ./plugins/node.plugin

newsect "Installing Commandline Toolset"
brew install wget

newsect "Installing Application Toolset"

#Development and System Tools
brew cask install iterm2
brew cask install brackets

#Web Tools
brew cask install google-chrome 
brew cask install firefox

#Business Tools
brew cask install libreoffice
brew cask install cyberduck
brew cask install nylas-n1

#Communication Tools
brew cask install skype 

#Storage Related Tools
brew cask install dropbox 
brew cask install the-unarchiver

#Video Tools
brew cask install vlc 
brew cask install handbrake 

#Audio Related Tools
brew cask install audacity

#Image editing Tools
brew cask install gimp
brew cask install darktable
brew cask install inkscape

#3D Tools
brew cask install blender

#Leisure Tools
brew cask install spotify 

newsect "Updating Brew and Casks"
brew cask update
brew update

msg "Cleaning up Brew and Casks"
brew cask cleanup
brew cleanup

msg "Looks like my job is done here....back to you Python"
