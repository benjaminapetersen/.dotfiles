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

# Disable "natural" scroll
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Set default screenshots folder
SCREENSHOT_FOLDER="~/Screenshots"
echo "Setting default screenshot folder to: ${SCREENSHOT_FOLDER}"
#mkdir -p "${SCREENSHOT_FOLDER}"
mkdir -p ~/Screenshots
#defaults write com.apple.screencapture location $SCREENSHOT_FOLDER
defaults write com.apple.screencapture location ~/Screenshots

echo "Creating ~/ folder structure..."
[[ ! -d ~/github ]] && mkdir ~/github
[[ ! -d ~/gitlab ]] && mkdir ~/gitlab
