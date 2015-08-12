# Path to your oh-my-zsh installation.
#export ZSH=/Users/efrain/.oh-my-zsh
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded
#
#ZSH_THEME="robbyrussell"
#ZSH_THEME="bureau"
#ZSH_THEME="agnoster"
#ZSH_THEME="clean"
#ZSH_THEME="afowler"
#ZSH_THEME="dpoggi"
ZSH_THEME="gnzh"
#ZSH_THEME="blinks"
#ZSH_THEME="clean"
#ZSH_THEME="cloud"
#ZSH_THEME="pygmalion"


#[[ -f $ZSH_GIT/zshrc ]] && source $ZSH_GIT/zshrc
[[ -f ~/dotfiles/zshrc ]] && source ~/dotfiles/zshrc

[[ -f ~/.aliases.local ]] && source ~/.aliases.local

[[ -f ~/.paths.local ]] && source ~/.paths.local



