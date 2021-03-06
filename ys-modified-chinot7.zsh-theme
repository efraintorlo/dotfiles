# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
# 
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo $HOST
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# VCS
YS_VCS_PROMPT_PREFIX1=" %{$fg[white]%}on%{$reset_color%} "
YS_VCS_PROMPT_PREFIX2=":%{$fg[cyan]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
YS_VCS_PROMPT_DIRTY=" %{$fg[red]%}✘"
YS_VCS_PROMPT_CLEAN=" %{$fg[green]%}✔"

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}git${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

# HG info
local hg_info='$(ys_hg_prompt_info)'
ys_hg_prompt_info() {
	# make sure this is a hg dir
	if [ -d '.hg' ]; then
		echo -n "${YS_VCS_PROMPT_PREFIX1}hg${YS_VCS_PROMPT_PREFIX2}"
		echo -n $(hg branch 2>/dev/null)
		if [ -n "$(hg status 2>/dev/null)" ]; then
			echo -n "$YS_VCS_PROMPT_DIRTY"
		else
			echo -n "$YS_VCS_PROMPT_CLEAN"
		fi
		echo -n "$YS_VCS_PROMPT_SUFFIX"
	fi
}

# Virtualenv: current working virtualenv
local virtualenv_info='$(ys_prompt_virtualenv)'
ys_prompt_virtualenv() {
    local virtualenv_path="$VIRTUAL_ENV"
    if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
        echo -n "%{$terminfo[bold]$fg[red]%}(`basename $virtualenv_path`)%{$reset_color%}"
    else
        echo -n ""
    fi
}

# Odrive status
local odrive_info='$(ys_prompt_odrive)'

ys_prompt_odrive() {
    local has_odrive="$(type odrive > /dev/null)"
    if $has_odrive; then
        local odrive_status="$(odrive syncstate . | head -1)"
        if [[ $odrive_status == *"Not Sync"* ]]; then
            echo -n "%{$fg[red]%}(odrive x) %{$reset_color%}"
        elif [[ $odrive_status == *"Synced"* ]]; then
            echo -n "%{$fg[green]%}(odrive o) %{$reset_color%}"
        elif [[ $odrive_status == *"Active"* ]]; then
            echo -n "%{$fg[yellow]%}(odrive >>) %{$reset_color%}"
        fi
    else
        echo -n ""
    fi
}

#pwd='$(PWD/HOME/~)'
#function get_pwd() {
#  pwd='$(dirname ${PWD/#$HOME/~})/$(basename ${PWD/#$HOME/~})'
#  echo $pwd
#}
#my_current_dir() {
#  echo $(pwd | perl -pe '
#   BEGIN {
#      binmode STDIN,  ":encoding(UTF-8)";
#      binmode STDOUT, ":encoding(UTF-8)";
#   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
#')
#}

#my_current_dir=$(get_pwd)
#my_current_dir='${pwd/#$HOME/~}'
#
# Prompt format: \n # (virtualenv) USER at MACHINE in DIRECTORY on git:BRANCH STATE [TIME] \n $ 
PROMPT="
%{$terminfo[bold]$fg[yellow]%}🦖 %{$reset_color%} \
${virtualenv_info}\
%{$fg[yellow]%}%n \
%{$fg[white]%}at \
%{$fg[green]%}$(box_name) \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
${hg_info}\
${git_info} \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[red]%}  > %{$reset_color%}"

if [[ "$USER" == "root" ]]; then
PROMPT="
%{$terminfo[bold]$fg[yellow]%}☠️ %{$reset_color%} \
${virtualenv_info}\
%{$bg[yellow]%}%{$fg[cyan]%}%n%{$reset_color%} \
%{$fg[white]%}at \
%{$fg[green]%}$(box_name) \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
${hg_info}\
${git_info} \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[red]%}>$ %{$reset_color%}"
fi

#PROMPT='%n@%m %{$fg[$user_color]%}$(my_current_dir)%{$reset_color%}%(!.#.>) '
