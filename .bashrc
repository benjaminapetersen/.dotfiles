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

# a func to list the dotfile configs, because sometimes its handy...
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
export PATH="${PATH}:${HOME}/.dotfiles/bin"

