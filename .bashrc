# Load system
# ----------------------------------------
# source all files in "system"
for SYSTEM_DOTFILE in `find ~/.dotfiles/system`
do
  [ -f "$SYSTEM_DOTFILE" ] && source "$SYSTEM_DOTFILE"
done 

# Git
# ----------------------------------------
# fix this, opendiff FilMerge vs kdiff3:
# sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
# git config --global merge.tool opendiff 

# Go
# ----------------------------------------
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
# cant remember if i need to monkey with $GOROOT :/
export GOPATH=$HOME/go 
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"


# history 
# ----------------------------------------
# see: https://github.com/holman/dotfiles/blob/80b2bd57e9c594dc7c783989801ee51930068d59/zsh/config.zsh
# for more nuggets....
export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTTIMEFORMAT="%d/%m/%y %T "
# when exit, append rather than overwrite
shopt -s histappend
# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Prompt
# ----------------------------------------
# bash functions cant return.  derp.
#  https://www.linuxjournal.com/content/return-values-bash-functions
# prompt quick fix
# PS1='\w\$ '
PS1_PREV=${PS1} # store backup
# good enough for now.
# this needs to be improved, but is usable
# matthias has a nice prompt that looks like:
#  name at laptop in pwd on gitbranch 
#  orange at yellow in green on purple
# export PS1='${RED}$(whoami)@$(hostname):${GREEN}$(pwd) > ${RESTORE}'
# https://github.com/mathiasbynens/dotfiles.
git_branch() {
  git branch 2>/dev/null | grep '^*' | colrm 1 2
}
if_git_branch_on_branch() {
  if [ -d .git ]; then
    echo "${RESTORE} on${PURPLE} $(git_branch)"
  fi
}
# todo: clean this up.
# from https://stackoverflow.com/questions/1616678/bash-pwd-shortening
# is a good quick fix, but I want to improve it.
pwd_trunc () {
    # expects 2 args. woot for bash & clarity...
    local PRE= NAME="$1" LENGTH="$2";
    [[ "$NAME" != "${NAME#$HOME/}" || -z "${NAME#$HOME}" ]] &&
        PRE+='~' NAME="${NAME#$HOME}" LENGTH=$[LENGTH-1];
    ((${#NAME}>$LENGTH)) && NAME="/...${NAME:$[${#NAME}-LENGTH+4]}";
    echo "$PRE$NAME"
}
export PS1='${RED}$(whoami)@$(hostname) ${RESTORE}in${GREEN} $(pwd_trunc "$PWD" 40)$(if_git_branch_on_branch) ${RESTORE}\n$ '

# explode the path into something readable...
pathboom() {
  echo "$PATH" | tr ':' '\n '
}