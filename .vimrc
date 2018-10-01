"---------------------------------------------
""""""""""""    My .vimrc file """"""""""""""
""--------------------------------------------
" Author: elchinot7
" -------------------------------------------
if filereadable(glob("~/.dotfiles/vimrc")) 
    source ~/.dotfiles/vimrc
endif

if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif


