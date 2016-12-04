#!/usr/bin/env bash

set -e
cwd=$1

#Sourcing Script Settings and Functions
echo "Adding Styling"
source "$cwd/config/styles.sh"
echo "Setting up Installation Environment"
source "$cwd/config/functions.sh"
echo "Setting Environment Variables"
source "$cwd/config/environment.sh"

msg "Caching password..."
sudo -K
sudo true;

source "${SCRIPT_FOLDER}/base-dependencies.sh"

source "${SCRIPT_FOLDER}/osx-setup.sh"
source "${SCRIPT_FOLDER}/bash-setup.sh"

newsect "Installing Package Managers"
source "${SCRIPT_FOLDER}/homebrew-setup.sh"
source "${SCRIPT_FOLDER}/node-setup.sh"
source "${SCRIPT_FOLDER}/python-setup.sh"
source "${SCRIPT_FOLDER}/rvm-setup.sh"

newsect "Installing Commandline Toolset"
source "${PLUGIN_FOLDER}/taskwarrior.sh"
source "${PLUGIN_FOLDER}/wget.sh"


newsect "Environment and Dependency Related"
source "${PLUGIN_FOLDER}/java.sh"
source "${PLUGIN_FOLDER}/android-sdk.sh"

newsect "Installing Application Toolset"

##Productivity Tools
source "${PLUGIN_FOLDER}/shift-it.sh"
source "${PLUGIN_FOLDER}/flycut.sh"

##3D Tools
#source "${PLUGIN_FOLDER}/blender.sh"
#source "${PLUGIN_FOLDER}/audacity.sh"
#
##Business Tools
#source "${PLUGIN_FOLDER}/citrix-receiver.sh"
#source "${PLUGIN_FOLDER}/cyberduck.sh"
#source "${PLUGIN_FOLDER}/libreoffice.sh"
#source "${PLUGIN_FOLDER}/nylas-n1.sh"
#
##Communication Tools
#source "${PLUGIN_FOLDER}/skype.sh"
#
##Development and System Tools
#source "${PLUGIN_FOLDER}/android-studio.sh"
#source "${PLUGIN_FOLDER}/arduino.sh"
#source "${PLUGIN_FOLDER}/brackets.sh"
#source "${PLUGIN_FOLDER}/docker.sh"
#source "${PLUGIN_FOLDER}/iterm2.sh"
#source "${PLUGIN_FOLDER}/vim.sh"
#source "${PLUGIN_FOLDER}/virtualbox.sh"
#
##Image editing Tools
#source "${PLUGIN_FOLDER}/darktable.sh"
#source "${PLUGIN_FOLDER}/gimp.sh"
#source "${PLUGIN_FOLDER}/inkscape.sh"
#
##Leisure Tools
#source "${PLUGIN_FOLDER}/spotify.sh"
#
##Networking/Analyze  Tools
#source "${PLUGIN_FOLDER}/wireshark.sh"
#
##Storage Related Tools
#source "${PLUGIN_FOLDER}/android-file-transfer.sh"
#source "${PLUGIN_FOLDER}/dropbox.sh"
#source "${PLUGIN_FOLDER}/the-unarchiver.sh"
#
##Video Tools
#source "${PLUGIN_FOLDER}/handbrake.sh"
#source "${PLUGIN_FOLDER}/vlc.sh"
#
##Web User Tools
#source "${PLUGIN_FOLDER}/firefox.sh"
#source "${PLUGIN_FOLDER}/google-chrome.sh"

newsect "Brew && Cask Cleanup Operations"
source "${SCRIPT_FOLDER}/homebrew-cleanup.sh"

msg "Completed Install....transfer to Python"