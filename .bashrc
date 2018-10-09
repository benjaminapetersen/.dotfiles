# Load system
# ----------------------------------------
# source all files in "system"
for SYSTEM_DOTFILE in `find ~/.dotfiles/system`
do
  [ -f "$SYSTEM_DOTFILE" ] && source "$SYSTEM_DOTFILE"
done 

# Add .dotfiles/bin custom scripts 
# ----------------------------------------
export PATH="${PATH}:${HOME}/.dotfiles/bin"

