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
ln -s ./bash_profile ~/.bash_profile

echo "Install complete"
echo "I suggest you `chmod -x on this file at this time`" 
