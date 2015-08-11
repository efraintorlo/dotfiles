#!/bin/bash
#
# (1) copy to: ~/dotfiles/ssh-host-color 
# (2) set:     alias ssh=~/dotfiles/ssh-host-color
#
# Inspired from http://talkfast.org/2011/01/10/ssh-host-color
# Fork from https://gist.github.com/773849
#
set_term_bgcolor(){
  local R=$1
  local G=$2
  local B=$3
  /usr/bin/osascript <<EOF
tell application "iTerm"
  tell the current terminal
    tell the current session
      set background color to {$(($R*65535/255)), $(($G*65535/255)), $(($B*65535/255))}
    end tell
  end tell
end tell
EOF
}

if [[ "$@" =~ fisica ]]; then
  #set_term_bgcolor 40 0 0
  set_term_bgcolor 0 43 54
  #set_term_bgcolor 253 246 227
elif [[ "$@" =~ ifm ]]; then
  #set_term_bgcolor 160 160 160
  #set_term_bgcolor 64 64 64
  #set_term_bgcolor 204 102 0
  #set_term_bgcolor 102 102 0
  #set_term_bgcolor 0 51 102
  set_term_bgcolor 0 25 51
elif [[ "$@" =~ apocrita ]]; then
  set_term_bgcolor 51 0 25
elif [[ "$@" =~ git ]]; then
  set_term_bgcolor 0 40 0
fi

#trap "set_term_bgcolor 0 0 0" EXIT  #black
trap "set_term_bgcolor 0 43 54" EXIT # Solarized base03  RGB= 0 43 5
#trap "set_term_bgcolor 0 54 66" EXIT # Solarized base02  RGB= 7 54 66
#trap "set_term_bgcolor 253 246 227" EXIT # Solarized base02  RGB= 253 246 227

ssh $@

#set_term_bgcolor 0 0 0
