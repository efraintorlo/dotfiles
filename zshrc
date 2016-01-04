source ~/.shell_prompt.sh
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(osx z dircycle pip ipython tmuxinator colored-man git tmux copydir cp brew)
plugins=(python pip ipython tmuxinator colored-man git tmux copydir cp brew)

# User configuration

#export PATH="/Applications/VisIt2.app/Contents/MacOS:/Users/efrain/Programs/fftw3:/Users/efrain/Programs/silo/bin:/Users/efrain/Programs/silo:/Users/efrain/Programs/hdf5:/Users/efrain/Programs/szip:/opt/intel/composer_xe_2015.3.187/bin/intel64:/Applications/eclipse:/Users/efrain/Programs/LiE::/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/opt/intel/composer_xe_2015.3.187/debugger/gdb/intel64/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cl="clear"
alias lt="ls -t"
alias tree="tree -C"
alias ssh=~/dotfiles/ssh-host-color.sh
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
#alias cdg="cd $(git rev-parse --show-toplevel)"
alias ipy="ipython"
alias ipython="ipython notebook"

alias makels="make -rpn | sed -n -e '/^$/ { n ; /^[^ .#][^ ]*:/p ; }' | egrep --color '^[^ ]*:'"

#bindkey "^[[1;6D" insert-cycledleft
#bindkey "^[[1;6C" insert-cycledright
