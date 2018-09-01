for DOTFILE in `find ~/.dotfiles/system`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done 


# Alias 
# -----------------
# Directory Traversal
#alias ..="cd .."
#alias ...="cd ../.."
#alias ...="cd ../../.."
#alias ....="cd ../../../.."
#alias .....="cd ../../../../.."
#alias ......="cd ../../../../../.."
#alias ~="cd ~"
## alias --="cd -"




# Path
# -----------------
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Source to execute helpers
# source $HOME/.some-file
# source $HOME/some-other-file

[[ -s "/Users/benjaminapetersen/.gvm/scripts/gvm" ]] && source "/Users/benjaminapetersen/.gvm/scripts/gvm"
