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


brew install ack
brew install ansible
brew install bash-completion
brew install docker 
brew install ffmpeg
brew install git
brew install golang
brew install gzip
brew install gpg
brew install htop
brew install imagemagick
brew install jq # json query
brew install lynx 
brew install mercurial
brew install mongodb #, restart_service: true
brew install mas # handles app store purchase installation
brew install node
brew install npm
brew install nginx
brew install python
brew install python3
brew install pypy
brew install the_silver_searcher
brew install tmux
brew install vim
brew install yarn 
brew install wget
brew install watch 

# re-link python to fix pip 
brew unlink python
brew link python


# CASKS
# ----------------------------------
brew cask install adium
brew cask install atom
brew cask install adobe-acrobat-reader
brew cask install blue-jeans
brew cask install brave 
brew cask install colluquy # irc
brew cask install caffeine
brew cask install cyberduck 
brew cask install divvy
brew cask install dropbox
brew cask install evernote
brew cask install firefox
brew cask install filezilla
brew cask install flux     # redshift at night.  no longer needed?
brew cask install gifox
brew cask install goland
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install grammarly
brew cask install iterm2
brew cask install kindle
brew cask install macvim
brew cask install minecraft
brew cask install minishift
brew cask install minikube 
brew cask install nvalt
brew cask install skype
brew cask install simplenote 
brew cask install slack
brew cask install spotify
brew cask install vagrant
brew cask install virtualbox
brew cask install visual-studio-code

# FONTS
# ----------------------------------
brew cask font-roboto-mono
