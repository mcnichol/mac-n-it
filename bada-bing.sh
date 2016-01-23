#!/bin/sh


# Code taken from https://gist.github.com/mokagio/b974620ee8dcf5c0671f
echo "Checking Xcode CLI tools"
# Only run if the tools are not installed yet
# To check that try to print the SDK path
xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  echo "Xcode CLI tools not found. Installing them..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
  softwareupdate -i "$PROD" -v;
else
  echo "Xcode CLI tools OK"
fi

echo "Installing Homebrew - The Missing Package Manager for Mac"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Commandline Toolset"
brew install wget

echo "Installing Application Toolset"
brew cask install google-chrome 
brew cask install skype 
brew cask install vlc 
brew cask install handbrake 
brew cask install spotify 
brew cask install dropbox 
brew cask install the-unarchiver
