# cute greeting
# ----------------------------------------
# cowsay "Welcome $USER! It's now $(date '+%A %B %d %Y %r')"

# Load system
# ----------------------------------------
# source all files in "system"
for SYSTEM_DOTFILE in `find ~/.dotfiles/system`
do
  [ -f "$SYSTEM_DOTFILE" ] && source "$SYSTEM_DOTFILE"
done 

# addToPromptCommand lunchbreak
addToPromptCommand update_tab_title
addToPromptCommand set_gopath
addToPromptCommand reload_history

# a func to list the dotfile configs, because sometimes
# I forget & need to print it out
# ----------------------------------------
listdotfiles() {
  echo "Loading configuration for:"
  for SYSTEM_DOTFILE in `find ~/.dotfiles/system`
  do 
    echo "$SYSTEM_DOTFILE"
  done 
}


# Add .dotfiles/bin custom scripts 
# ----------------------------------------
pathappend "${HOME}/.dotfiles/bin"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
source <(kubectl completion bash)

