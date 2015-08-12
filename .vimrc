"---------------------------------------------
""""""""""""    My .vimrc file """"""""""""""
""--------------------------------------------
" Author: elchinot7
" Machine: MacAir
" OS: Yosemite
" -------------------------------------------
if filereadable(glob("~/dotfiles/vimrc")) 
    source ~/dotfiles/vimrc
endif

if filereadable(glob("~/.vimrc.local")) 
    source ~/.vimrc.local
endif


