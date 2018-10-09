#!/bin/bash 

echo "OSX Installation Script"

if ! [ -x "$(command -v brew)" ]; then
  echo "Installing homebrew"
  # install with prompts
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  # redirec to dev null to skip prompts
  # /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
  brew update
fi

# Dedicated to homebrew installs
source ./osx/Brewfile.sh

# Unicorns, annoying things
# ----------------------------------
echo "Time for installing Unicorns!"

# Go specific
if ! [ -x "$(command -v gvm)" ]; then
  echo "Installing GVM (Go Version Manager"
  bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
Fi

# Python specific
echo "Installing Python packages..."
PYTHON_PACKAGES=(
  virtualenv
  virtualenvwrapper
)
pip install "${PYTHON_PACKAGES}"

## AWS via pip 
echo "Installing AWS Cli via pip"
## --user installs to a location under ~/
## --upgrade will cause pip to upgrade existing dependencies
pip install awscli --upgrade --user

echo "Installing Ruby gems"
RUBY_GEMS=(
  bundler
)
gem install "${RUBY_GEMS}"

# Manual Required
echo "Finished. But some manual effort required:"
echo "- Textual from the App store (if still desired)"
echo "- Pixelmator from the App store (if still desired)"
echo "- Divvy from the App store to apply your license"
echo "- Gifox from the App store to apply your license"
echo "- Sketch from the App store to apply your license"