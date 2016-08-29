#!/usr/bin/env bash

echo "Starting $1"
cwd=$1

#Sourcing Script Settings and Functions
source "$cwd/config/common.functions"
source "$cwd/config/common.config"

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
source "$cwd/scripts/homebrew-setup.sh"
source "$cwd/scripts/nvm-setup.sh"
source "$cwd/scripts/python-setup.sh"
source "$cwd/scripts/rvm-setup.sh"

newsect "Installing Commandline Toolset"
source "$cwd/plugins/node.sh"
source "$cwd/plugins/taskwarrior.sh"
source "$cwd/plugins/wget.sh"

newsect "Environment and Dependency Related"
source "$cwd/plugins/java.sh"
source "$cwd/plugins/android-sdk.sh"

newsect "Installing Application Toolset"
#3D Tools
source "$cwd/plugins/blender.sh"
source "$cwd/plugins/audacity.sh"

#Business Tools
source "$cwd/plugins/citrix-receiver.sh"
source "$cwd/plugins/cyberduck.sh"
source "$cwd/plugins/libreoffice.sh"
source "$cwd/plugins/nylas-n1.sh"

#Communication Tools
source "$cwd/plugins/skype.sh"

#Development and System Tools
source "$cwd/plugins/android-studio.sh"
source "$cwd/plugins/arduino.sh"
source "$cwd/plugins/brackets.sh"
source "$cwd/plugins/docker.sh"
source "$cwd/plugins/iterm2.sh"
source "$cwd/plugins/vim.sh"
source "$cwd/plugins/virtualbox.sh"

#Image editing Tools
source "$cwd/plugins/darktable.sh"
source "$cwd/plugins/gimp.sh"
source "$cwd/plugins/inkscape.sh"

#Leisure Tools
source "$cwd/plugins/spotify.sh"

#Networking/Analyze  Tools
source "$cwd/plugins/wireshark.sh"

#Storage Related Tools
source "$cwd/plugins/android-file-transfer.sh"
source "$cwd/plugins/dropbox.sh"
source "$cwd/plugins/the-unarchiver.sh"

#Video Tools
source "$cwd/plugins/handbrake.sh"
source "$cwd/plugins/vlc.sh"

#Web User Tools
source "$cwd/plugins/firefox.sh"
source "$cwd/plugins/google-chrome.sh"

newsect "Brew && Cask Cleanup Operations"
source "$cwd/scripts/homebrew-cleanup.sh"

msg "Looks like my job is done here....back to you Python"
