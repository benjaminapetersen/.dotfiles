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

# TODo: replace all of this with a Brewfile?
# echo "Installing formula/casks/taps with Homebrew..."
# brew tap Homebrew/bundle 
# brew bundle --file="$PWD/install/osx/Brewfile"



# Install GNU core utilities
# BSD user experience is poor :/
brew install coreutils
# --with-default-names will overwrite BSD, rather than install a prefixed version
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-which --with-default-names
brew install gnu-grep --with-default-names 
# find,locate,updatedb,xargs.. g-prefixed, i guess?
brew install findutils --with-default-names

# latest bash (4?)
brew install bash 

# packages are formula
FORMULAS=(
  ack
  ansible
  bash-completion
  ffmpeg
  git
  golang
  gzip
  gpg
  htop
  imagemagick
  jq # json query
  lynx 
  mercurial
  node
  npm
  python
  python3
  pypy
  the_silver_searcher
  tmux
  vim
  yarn 
  wget
  watch 
)

echo "Installing formula with Homebrew..."
brew install "${FORMULAS}"

# re-link python to get pip 
brew unlink python && brew link python

# Casks are closed source binaries
CASKS=(
  colluquy # irc
  dropbox
  firefox
  flux     # redshift at night.  no longer needed?
  google-chrome
  google-drive
  google-hangouts
  iterm2
  macvim
  skype
  slack
  vagrant
  virtualbox
)

echo "Installing casks with Homebrew..."
brew cask install "${CASKS}"

echo "Installing fonts with Homebrew..."
FONTS=(
  font-roboto
)
brew cask install "${FONTS}"

# Unicorns 
echo "Time for installing Unicorns!"
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

echo "Installing Ruby gems"
RUBY_GEMS=(
  bundler
)
gem install "${RUBY_GEMS}"

# Manual Required
echo "Finished. But some manual effort required:"
echo "- Textual from the App store (if still desired)"
echo "- Pixelmator from the App store (if still desired)"
