#!/bin/bash 


ENVIRONMENT=$(uname -s)

echo "Environment is: ${ENVIRONMENT}"

# if [ "$ENVIRONMENT" = "Darwin" ]; then
#   echo "We on OSX"
# elif [ "$ENVIRONMENT" = "Linux" ]; then
#   echo "We on Linux"
# fi

case $ENVIRONMENT in
  "Darwin")
    echo "Installation for OSX"
    source ./osxdefaults.sh
    source ./install/osx.sh
    ;;
  "Linux")
    echo "Installation for Linux"
    source ./install/linux.sh
    ;;
  *)
    echo "We dont know"
    ;;
esac

# RUN THE VARIOUS INSTALLS
# Perhaps under .dotfiles/install?
# DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# echo $DOTFILES

echo "Symlinking configs..."
ln -s ./bash_profile $HOME/.bash_profile
ln s ./bashrc $HOME/.bashrc

echo "Symlinking ./bin/* files into $HOME/bin"
# TODO: fix.  also, 
#  use $HOME, not ~/
#  use $PWD, maybe?
# for BIN_FILE in `find ~/.dotfiles/bin`
# do
#   #[ -f "$BIN_FILE" ] && ln -s $BIN_FILE $HOME/bin/$BIN_FILE
#   echo $BIN_FILE
# done 

echo "Install complete"
echo "I suggest you `chmod -x on this file at this time`" 
