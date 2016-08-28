#!/usr/bin/env bash

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
source ./scripts/homebrew-setup.sh
source ./scripts/nvm-setup.sh
source ./scripts/python-setup.sh
source ./scripts/rvm-setup.sh

newsect "Installing Commandline Toolset"
source ./plugins/node.plugin
source ./plugins/taskwarrior.plugin
source ./plugins/wget.plugin

newsect "Environment and Dependency Related"
source ./plugins/java.plugin
source ./plugins/android-sdk.plugin

newsect "Installing Application Toolset"
#3D Tools
source ./plugins/blender.plugin
source ./plugins/audacity.plugin

#Business Tools
source ./plugins/citrix-receiver.plugin
source ./plugins/cyberduck.plugin
source ./plugins/libreoffice.plugin
source ./plugins/nylas-n1.plugin

#Communication Tools
source ./plugins/skype.plugin

#Development and System Tools
source ./plugins/android-studio.plugin
source ./plugins/arduino.plugin
source ./plugins/brackets.plugin
source ./plugins/docker.plugin
source ./plugins/iterm2.plugin
source ./plugins/vim.plugin
source ./plugins/virtualbox.plugin

#Image editing Tools
source ./plugins/darktable.plugin
source ./plugins/gimp.plugin
source ./plugins/inkscape.plugin

#Leisure Tools
source ./plugins/spotify.plugin

#Networking/Analyze  Tools
source ./plugins/wireshark.plugin

#Storage Related Tools
source ./plugins/android-file-transfer.plugin
source ./plugins/dropbox.plugin
source ./plugins/the-unarchiver.plugin

#Video Tools
source ./plugins/handbrake.plugin
source ./plugins/vlc.plugin

#Web User Tools
source ./plugins/firefox.plugin
source ./plugins/google-chrome.plugin

newsect "Brew && Cask Cleanup Operations"
source ./scripts/brew-cleanup.sh

msg "Looks like my job is done here....back to you Python"
