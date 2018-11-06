# OLD INSTALL:
# ----------------
# # TODo: replace all of this with a Brewfile?
# # echo "Installing formula/casks/taps with Homebrew..."
# # brew tap Homebrew/bundle 
# # brew bundle --file="$PWD/install/osx/Brewfile"

# # Install GNU core utilities
# # BSD user experience is poor :/
# brew install coreutils
# # --with-default-names will overwrite BSD, rather than install a prefixed version
# brew install gnu-sed --with-default-names
# brew install gnu-tar --with-default-names
# brew install gnu-indent --with-default-names
# brew install gnu-which --with-default-names
# brew install gnu-grep --with-default-names 
# # find,locate,updatedb,xargs.. g-prefixed, i guess?
# brew install findutils --with-default-names

# # latest bash (4?)
# brew install bash 

# # packages are formula
# FORMULAS=(
#   ack
#   ansible
#   bash-completion
#   ffmpeg
#   git
#   golang
#   gzip
#   gpg
#   htop
#   imagemagick
#   jq # json query
#   lynx 
#   mercurial
#   node
#   npm
#   python
#   python3
#   pypy
#   the_silver_searcher
#   tmux
#   vim
#   yarn 
#   wget
#   watch 
# )

# echo "Installing formula with Homebrew..."
# brew install "${FORMULAS}"

# # re-link python to get pip 
# brew unlink python && brew link python

# # Casks are closed source binaries
# CASKS=(
#   colluquy # irc
#   dropbox
#   firefox
#   flux     # redshift at night.  no longer needed?
#   google-chrome
#   google-drive
#   google-hangouts
#   iterm2
#   macvim
#   skype
#   slack
#   vagrant
#   virtualbox
# )

# echo "Installing casks with Homebrew..."
# brew cask install "${CASKS}"

# echo "Installing fonts with Homebrew..."
# FONTS=(
#   font-roboto
# )
# brew cask install "${FONTS}"



# NEW INSTALL:
# ----------------

# specify a directory to install
cask_args appdir: '/Applications'

brew update 
brew doctor

# TAPS
# ----------------------------------
# tap caskroom/homebrew-cask || true
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap homebrew/bundle
brew tap homebrew/core
brew tap homebrew/services

# GNU core utils
brew install coreutils
brew install findutils

# Update bash 
brew install bash 


# FORMULA
# ----------------------------------
# --with-default-names will replace the built-in 
# BSD versions.  I dislike the UX of BSD
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-which --with-default-names
brew install gnu-grep --with-default-names 

# well, it started alphabetical...
brew install ack
brew install ansible
brew install bash-completion
brew install ffmpeg
brew install git
# docker & container tools
brew install docker 
brew install kubernetes-cli
brew install openshift-cli 
# golang & tools
brew install golang
brew install dep
# node & tools
brew install node
brew install npm
brew install yarn 
# security 
# pgp - pretty good privacy :)
# this package is actually gnupg, which 
# seems to be gpg2. 
brew install gpg  
brew install gpg2 
brew install gpg-agent
brew install pinentry-mac
# brew install gpgtools - err, no longer exists?
# other this and that
brew install gzip
brew install gpg
brew install htop
brew install imagemagick
brew install jq # json query
brew install lynx 
brew install mercurial
brew install mongodb #, restart_service: true
brew install mas # handles app store purchase installation
brew install nginx
brew install the_silver_searcher
brew install tmux
brew install vim
brew install wget
brew install watch 
# python & tools
brew install python
brew install python3
brew install pypy
# re-link python to fix pip 
brew unlink python
brew link python


# CASKS
# ----------------------------------
# super handy tools
brew cask install caffeine
brew cask install divvy
brew cask install spectacle
brew cask install dropbox
brew cask install flux     # redshift at night.  no longer needed?
brew cask install gifox
brew cask install grammarly
brew cask install kindle
brew cask install spotify
# adobe
brew cask install adobe-acrobat-reader
# ftp like the old school 
brew cask install cyberduck 
brew cask install filezilla
# browsers
brew cask install firefox
brew cask install brave
# virtual machines
brew cask install vagrant
brew cask install virtualbox
# chats
brew cask install adium
brew cask install slack
brew cask install blue-jeans
brew cask install colluquy # irc
brew cask install skype
# brew cask install discord
# notes apps
brew cask install nvalt
brew cask install simplenote 
brew cask install evernote
# Terminals, Editors, IDEs
brew cask install goland
brew cask install atom
brew cask install iterm2
brew cask install visual-studio-code
brew cask install macvim
# git
brew cask install kdiff3 # difftool. Prefer FileMerge tho
# brew cask install kaleidoscope
# brew cask install ksdiff
# games
brew cask install minecraft
# google 
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
# containers & orchestration
brew cask install docker
brew cask install minikube 
brew cask install minishift

# FONTS
# ----------------------------------
brew cask font-roboto-mono


# java, cuz, java?
# java will prompt for password, this one 
# should be handled differently perhaps
brew cask install java 
