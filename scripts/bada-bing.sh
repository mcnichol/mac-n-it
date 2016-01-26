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

newsect "Installing Package Managers"
source ./scripts/python-setup.sh
source ./scripts/homebrew-setup.sh
source ./scripts/nvm-setup.sh
source ./scripts/rvm-setup.sh

newsect "Installing Commandline Toolset"
source ./plugins/node.plugin
source ./plugins/wget.plugin
source ./plugins/taskwarrior.plugin

newsect "Installing Application Toolset"
#Development and System Tools
source ./plugins/iterm2.plugin
source ./plugins/brackets.plugin

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
source ./plugins/spotify.plugin

newsect "Updating Brew and Casks"
brew cask update
brew update

msg "Cleaning up Brew and Casks"
brew cask cleanup
brew cleanup

msg "Looks like my job is done here....back to you Python"
