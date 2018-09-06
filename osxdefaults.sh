#!/bin/bash

echo "Configuring OSX..."
# show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Set fast key repeat rate
#defaults write NSGlobalDomain KeyRepeat -int 0

# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Prefer column view for finder
# options: Flwv (coverflow), Nlsv (list), clmv (column), icnv (icon)
defaults write com.apple.Finder FXPreferredViewStyle type clmv

# show library
chflags nohidden ~/Library 

# show volumnes (like flash drives) on the desktop 
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true 
defaults write com.apple.finder showRemovableMediaOnDesktop -bool true 


# Disable "natural" scroll
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Set default screenshots folder
SCREENSHOT_FOLDER="~/Screenshots"
echo "Setting default screenshot folder to: ${SCREENSHOT_FOLDER}"
#mkdir -p "${SCREENSHOT_FOLDER}"
mkdir -p ~/Screenshots
#defaults write com.apple.screencapture location $SCREENSHOT_FOLDER
defaults write com.apple.screencapture location ~/Screenshots

echo "Creating ~/ ($HOME) folder structure..."
[[ ! -d ~/github ]] && mkdir ~/github
[[ ! -d ~/gitlab ]] && mkdir ~/gitlab
[[ ! -d ~/Screenshots ]] && mkdir ~/Screenshots
# bin for dropping in binaries 
[[ ! -d ~/bin ]] && mkdir ~/bin

MACHINE_NAME="isengard"
echo "Renaming the machine to ${MACHINE_NAME}"
scutil --set ComputerName "${MACHINE_NAME}"
scutil --set HostName "${MACHINE_NAME}"
scutil --set LocalHostName "${MACHINE_NAME}"