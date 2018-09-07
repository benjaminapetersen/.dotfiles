#!/bin/bash

echo "Configuring OSX..."

# machine_name
# TODO: move this to something like /install/osx/machine.sh
# ---------------------------------------
# rename the machine
MACHINE_NAME="isengard"
echo "Naming your machine ${MACHINE_NAME}"
echo "Renaming the machine to ${MACHINE_NAME}"
scutil --set ComputerName "${MACHINE_NAME}"
scutil --set HostName "${MACHINE_NAME}"
scutil --set LocalHostName "${MACHINE_NAME}"

# home_folders
# TODO: move this to something like /install/generic/home_folders.sh
# ---------------------------------------
# Set default screenshots folder
SCREENSHOT_FOLDER="~/Screenshots"
echo "Setting default screenshot folder to: ${SCREENSHOT_FOLDER}"
#mkdir -p "${SCREENSHOT_FOLDER}"
mkdir -p ~/Screenshots
#defaults write com.apple.screencapture location $SCREENSHOT_FOLDER
defaults write com.apple.screencapture location ~/Screenshots

echo "Creating ~/ ($HOME) folder structure..."
# repository locations
mkdir -p "${HOME}/github"
mkdir -p "${HOME}/gitlab"
# binaries
mkdir -p "${HOME}/bin"
# paperwork, bills, etc
mkdir -p "${HOME}/Screenshots"
# example receipts location, using current job
mkdir -p "${HOME}/Documents/work/red_hat/receipts/submitted"
mkdir -p "${HOME}/Documents/work/red_hat/receipts/to_submit"
mkdir -p "${HOME}/Documents/home/receipts"

# osx defaults
# ---------------------------------------
echo "Setting some OSX defaults for finder, filenames, etc"
# show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Set fast key repeat rate
#defaults write NSGlobalDomain KeyRepeat -int 0

# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Enable tap-to-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Customizing your finder"
# Prefer column view for finder
# options: Flwv (coverflow), Nlsv (list), clmv (column), icnv (icon)
defaults write com.apple.Finder FXPreferredViewStyle type clmv

echo "Showing some hidden files"
# show library
chflags nohidden ~/Library 
# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# show volumnes (like flash drives) on the desktop 
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true 
defaults write com.apple.finder showRemovableMediaOnDesktop -bool true 

# Disable "natural" scroll
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false



