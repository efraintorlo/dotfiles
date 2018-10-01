" Snippets variables
let g:snips_author='elchinot7'
let g:author='elchinot7 '
let g:snips_email='efraazu@gmail.com'
let g:email='efraazul@gmail.com'
let g:snips_github='https://github.com/elchinot7'
let g:github='https://github.com/elchinot7'

" ~ . ~ . ~ . ~ . ~ . ~ . ~ .
colorscheme slate
" ~ . ~ . ~ . ~ . ~ . ~ . ~ .
"
" ====================
"  Defining: <leader>
let mapleader = ","
let maplocalleader = ","
" ====================

"let g:tex_flavor = "latex"
"let g:tex_flavor = "tex"
autocmd BufRead,BufNewFile *.tex set filetype=tex

" Ag-silver to subtitute ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Sudo Save
command! -nargs=0 W w !sudo tee % > /dev/null
cmap w!! w !sudo tee %

" Zoom-in window to get Full screen
" to close the zoomed window just type ':wq'
nnoremap <leader><leader>z :tabnew %<cr>

" associate *.info with conf filetype
au BufRead,BufNewFile *.info setfiletype conf

" Avoid conceal TeX effects
" Conceal in tex file: "admgs", a=accents, d=delimiters,
" m=math symbols, g=Greek, s=superscripts/subscripts:
let g:tex_conceal=""
if version >= 703
    if has("conceal")
        set conceallevel=0
        autocmd FileType * setlocal conceallevel=0
    endif
endif

" This is quite useful:
set cmdheight=1

" Disabling PageUp & PageDown
map <PageUp> <NOP>
map <PageDown> <NOP>
imap <PageUp> <NOP>
imap <PageDown> <NOP>

" Insert a New line & return to normal mode
nnoremap oo o<Esc>
nnoremap OO O<Esc>

" Uppercase sigle word
function! UppercaseSingleWord()
    normal! viwU
endfunction
" Lowercase sigle word
function! LowercaseSingleWord()
    normal! viwu
endfunction

nnoremap <leader>U :call UppercaseSingleWord()<cr>
nnoremap <leader>u :call LowercaseSingleWord()<cr>

" Fix Last Spelling Error
function! FixLastSpellingError()
  normal! mm[s1z=`m"
endfunction
function! FixNextSpellingError()
  normal! mm]s1z=`m"
endfunction
nnoremap <leader>sp :call FixLastSpellingError()<cr>
nnoremap <leader>zz :call FixLastSpellingError()<cr>
nnoremap <leader>ZZ :call FixNextSpellingError()<cr>

" set 'updatetime' to 15 seconds when in insert mode
au InsertEnter * let updaterestore=&updatetime | set updatetime=15000
au InsertLeave * let &updatetime=updaterestore
" Swapping dot and colon
"nnoremap . :
"nnoremap : .
"Mapping third functions into first
"inoremap ´ {
"inoremap { ´
"===================
"Beep is annoying
"set visualbell
set noeb vb t_vb=

"Habit breaking, habit making
"this disables the arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"inoremap <Up> <NOP>
"inoremap <Down> <NOP>
"inoremap <Left> <NOP>
"inoremap <Right> <NOP>
"====================
"Saving !
map <Esc><Esc> :w<CR> :echom '...file saved'<CR>
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

"Switch between buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Shift-Enter to run a program ala Mathematic
" using "make"
"noremap <S-CR> :make | copen
"nmap <c-r> :make | copen
"noremap <F2> :make | copen
"map rr :make <bar> copen<CR>
map rr :make <CR> <CR>


"setlocal spell
" activate spell-checking alternatives
nmap .s :set invspell spelllang=en<cr>
nmap .ss :set invspell spelllang=es<cr>

set clipboard=unnamed
set backspace=2 " make backspace work like most other apps
set encoding=utf-8

set nu

if exists('+relativenumber')
    set relativenumber
endif


set cursorline
" toggle cursor line
nnoremap <leader>i :set cursorline!<cr>

set tw=80
"====[ Make the 81st column stand out ]====================
"highlight ColorColumnNew ctermbg=white
highlight ColorColumnNew ctermbg=white ctermfg=white guibg=#592929
call matchadd('ColorColumn', '\%82v', 100)
"autocmd ColorScheme highlight ColorColumnNew ctermbg=white
autocmd ColorScheme * highlight ColorColumnNew ctermbg=11 ctermfg=white  guibg=#592929

"let &colorcolumn=join(range(81,999),",")
"let &colorcolumn="80,".join(range(120,999),",")
"highlight ColorColumn ctermbg=235 guibg=#2c2d27

"set cursorline
"highlight CursorLine ctermbg=LightBlue
"set highlight CursorLine ctermbg=#073642
"highlight CursorLine ctermbg=235
""=====[ Highlight matches when jumping to next ]=============
"nnoremap <silent> n n:call HLNext(0.4)<cr>
"nnoremap <silent> N N:call HLNext(0.4)<cr>
""=====[ Blink the matching line ]=============
"function! HLNext (blinktime)
"set invcursorline
"redraw
"exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm' set invcursorline
"redraw endfunction

hi clear CursorLine
augroup CLClear
    autocmd! ColorScheme * hi clear CursorLine
augroup END

hi CursorLineNR cterm=bold
augroup CLNRSet
    autocmd! ColorScheme * hi CursorLineNR cterm=bold, ctermbg=238 ctermfg=250
augroup END

"hi clear CursorLine
"set cursorline
"hi CursorLine term=bold cterm=bold guibg=Grey40

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
"set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
hi NonText ctermfg=7 guifg=gray


" toggle paste mode
map <leader>v :set paste!<cr>

" edit ~/.vimrc
"map <leader>ev :e! ~/.vimrc<cr>
map <leader>ev :e! ~/dotfiles/vimrc<cr>

" edit ~/.tmux.config
"map <leader>et :e! ~/.tmux.config<cr>
map <leader>et :e! ~/dotfiles/tmux.config<cr>

" edit ~/.zshrc
"map <leader>ez :e! ~/.zshrc<cr>
map <leader>ez :e! ~/dotfiles/zshrc<cr>

" Python Mappings
" Fix print_function Python2 vs Python3
function! FixPythonPrint()
    %s/^\(\s*print\)\s\+\(.*\)/\1(\2)
endfunction

nnoremap <Leader>fpp :call FixPythonPrint()<CR>
"--------------------------------------------------
"Trailing Whitespace
"---------------------------------------------------
"http://www.bestofvim.com/tip/trailing-whitespace/
match ErrorMsg '\s\+$'
"Delete it
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
"Kill it
" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

" Removes trailing spaces
nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
"---------------------------------------------------

">>>>>>>>> Move a line up & down with correct indentation  <<<<<<<<<<<
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
inoremap <leader>j <Esc>:m .+1<CR>==gi
inoremap <leader>k <Esc>:m .-2<CR>==gi
vnoremap <leader>j :m '>+1<CR>gv=gv
vnoremap <leader>k :m '<-2<CR>gv=gv

" -------------------------------------------------------------
"With these, you can use \gq or gqlp ("gq LaTeX paragraph") to
"format paragraphs in your LaTeX files.
map \gq ?^$\\|^\s*\(\\)begin\\|\\end\\|\\label\)?1<CR>gq//-1<CR>
omap lp ?^$\\|^\s*\(\\)begin\\|\\end\\|\\label\)?1<CR>//-1<CR>.<CR>
"omap lp ?^$\\|^\s*\(\\)begin\\|\\label\)?-1<CR>//-1<CR>.<CR>
" -------------------------------------------------------------

nmap == gqlp

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
" Send more characters for redraws
 set ttyfast
" Enable mouse use in all modes
 set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm

"set ttymouse=xterm2
if !has('nvim')
  set ttymouse=xterm2
endif

"--------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" My Plugins
Plugin 'L9'
Plugin 'pthrasher/conqueterm-vim'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
Bundle 'xolox/vim-colorscheme-switcher'
Bundle 'xolox/vim-misc'
Bundle 'altercation/vim-colors-solarized'
Plugin 'mileszs/ack.vim'
Plugin 'matchit.zip'
Plugin 'ron89/thesaurus_query.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'chriskempson/base16-vim'
Bundle 'edkolev/tmuxline.vim'
Bundle 'vim-scripts/fortran.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'gi1242/vim-tex-autoclose'
" Future Plugins
"speeddating.vim
"abolish.vim
"commentary.vim
"vim-easyclip
Plugin 'vim-scripts/AutoAlign'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/Gundo'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
if version > 703
    Plugin 'vim-pandoc/vim-pandoc'
    Plugin 'vim-pandoc/vim-pandoc-syntax'
endif
Bundle 'edkolev/promptline.vim'
"Bundle 'tpope/vim-speeddating'
Bundle 'vim-scripts/timestamp.vim'
Plugin 'irrationalistic/vim-tasks'
Plugin 'xolox/vim-notes'
"Plugin 'xieyu/pyclewn'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'jvirtanen/vim-octave'
Plugin 'reedes/vim-wordy'
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-colors-pencil'
Plugin 'ervandew/supertab'
Plugin 'keith/gist.vim'
"Plugin 'klen/python-mode'
"Plugin 'hdima/python-syntax'
"Plugin 'purpleP/python-syntax'
"Plugin 'kh3phr3n/python-syntax'
Plugin 'elchinot7/python-syntax'
Plugin 'AndrewRadev/switch.vim'
"Plugin 'itchyny/lightline.vim'
"Plugin 'Rykka/riv.vim'
Plugin 'Yggdroot/indentLine'
if has("python")
    Plugin 'SirVer/ultisnips'
endif
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'chrisbra/Colorizer'
Plugin 'vim-scripts/AfterColors.vim'
"Plugin 'rbonvall/snipmate-snippets-fortran95'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
set omnifunc=syntaxcomplete#Complete

"



"----  NEERDTree configs ----
"
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    let g:NERDTreeDirArrows=0
  endif
endif
"if-shell 'test "$(uname)" = "Darwin"' 'let g:NERDTreeArrows=0'
"let g:NERDTreeDirArrows=0

"autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" """"""""" Syntastic config """""""""
" toggle syntastic
 nmap <leader>s :SyntasticToggleMode<cr>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_debug = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" HTML
let g:syntastic_html_tidy_ignore_errors = [
            \ 'unescaped & which should be written as &amp']

"let g:syntastic_quiet_messages = { "level": "warnings" }
"FORTRAN
let g:syntastic_fortran_compiler = 'gfortran'
"let g:syntastic_fortran_compiler = 'ifort'
let g:syntastic_fortran_remove_include_errors = 1
"let g:syntastic_fortran_compiler_options=
"let g:syntastic_fortran_include_dirs = ['../Release']
let g:syntastic_fortran_config_file = '.my_custom_include_file_for_syntastic'
" C++
"let g:syntastic_cpp_compiler = 'icpc'
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_remove_include_errors = 0
let g:syntastic_cpp_config_file = '.my_custom_include_file_for_syntastic'
"MATLAB
"let g:syntastic_matlab_
"PYTHON
let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_python_checkers = []
let g:syntastic_python_flake8_args='--ignore=F403,E501,E226,E702'
"LATEX

"------latex --------
let g:syntastic_tex_checkers = ['chktex']
"let g:syntastic_tex_chktex_args='--ignore=W35,W6,W8'
let g:syntastic_tex_chktex_args='--ignore=W11,W6'
"let g:syntastic_tex_chktex_args='-n35'
"let g:syntastic_tex_checkers = ['']
let g:LatexBox_quickfix = 3
let g:LatexBox_show_warnings = 0
"let g:LatexBox_latexmk_options = "-pdflatex='pdflatex -synctex=1 \%O \%S'"
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex --shell-escape --synctex=1 --f \%O \%S'"
let g:LatexBox_latexmk_async = 1
if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        "let g:LatexBox_viewer = 'mupdf-x11'
        "let g:LatexBox_viewer = '/Applications/Skim.app/Contents/MacOS/Skim'
        let g:LatexBox_viewer = 'mupdf-x11 -r 95'
    endif
    if s:uname == "Linux\n"
        let g:LatexBox_viewer = '/usr/bin/mupdf -r 95'
    endif
endif
"let g:Tex_DefaultTargetFormat = 'pdf'
"let g:Tex_CompileRule_pdf = 'latexmk -bibtex -r latexmrc ipmc $*'
"this Maps does not work
"map <leader>r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline <C-r>=line('.')<CR> %<CR>
"map <leader>r :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline %<C-r>=line('.')<CR> %<CR>
let g:LatexBox_fold_automatic = 0
let g:LatexBox_Folding = 1
let g:LatexBox_fold_toc = 1

"imap <buffer> [[     \begin{

"imap <buffer> ]]     <Plug>LatexCloseCurEnv

"imap <buffer> [[     \begin{
"imap <buffer> ]]     <Plug>LatexCloseCurEnv
"nmap <buffer> <F5>   <Plug>LatexChangeEnv " I'm using F5 for GUNDO
"vmap <buffer> <F7>   <Plug>LatexWrapSelection
"vmap <buffer> <S-F7> <Plug>LatexEnvWrapSelection
"imap <buffer> ((     \eqref{

"How to type this ?
"map  <silent> <buffer> ¶ :call LatexBox_JumpToNextBraces(0)<CR>
"map  <silent> <buffer> § :call LatexBox_JumpToNextBraces(1)<CR>
"imap <silent> <buffer> ¶ <C-R>=LatexBox_JumpToNextBraces(0)<CR>
"imap <silent> <buffer> § <C-R>=LatexBox_JumpToNextBraces(1)<CR>

"----- SNIP -----
 "Octave syntax
 augroup filetypedetect
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
 augroup END
"Use keywords from Octave syntax language file for autocomplete
if has("autocmd") && exists("+omnifunc")
   autocmd Filetype octave
   \    if &omnifunc == "" |
   \    setlocal omnifunc=syntaxcomplete#Complete |
   \    endif
endif


"-----Fortran.vim -----
let fortran_free_source = 1
let fortran_have_tabs = 1
let fortran_fold_conditionals=1


"--- CTAGS ---
"let g:tagbar_ctags_bin='/Users/efrain/Programs/ctags/bin/ctags'  " Proper Ctags locations
let g:tagbar_width= 40                          " Default is 40, seems too wide
if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        let g:tagbar_ctags_bin='/Users/efrain/Programs/ctags/bin/ctags'  " Proper Ctags locations
    endif
    if s:uname == "Linux\n"
        let g:tagbar_ctags_bin='/usr/bin/ctags'  " Proper Ctags locations
    endif
endif
"noremap <silent> <Leader>y :TagbarToggle       " Display panel with y (or ,y)
noremap <silent> <Leader>b :TagbarToggle<CR>       " Display panel with b (or ,b)

" ---- delimitMate -----
au FileType python let b:delimitMate_jump_expansion = 1
au FileType python let b:delimitMate_expand_cr = 1
au FileType python let b:delimitMate_expand_space = 1
au FileType python let b:delimitMate_expand_inside_quotes = 1
au FileType python let b:delimitMate_nesting_quotes = ['"']


au FileType tex,plaintex let b:delimitMate_jump_expansion = 1
au FileType tex,plaintex let b:delimitMate_expand_cr = 1
au FileType tex,plaintex let b:delimitMate_expand_space = 1
au FileType tex,plaintex let b:delimitMate_expand_inside_quotes = 1
au FileType tex,plaintex let b:delimitMate_autoclose = 0

"-----Color Solarized -----
syntax enable
"if has('gui_running')
""       	set background=light
""    else
""	 set background=dark
"endif
"set background=dark
"set background=light
"let g:solarized_termtrans = 1
"let g:solarized_termcolors=256
"let g:solarized_termcolors=16
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"colorscheme solarized
"


" ---PowerLine ----- DEPRECATED !!
"set guifont=Ubuntu\ Mono\ derivative\ Powerline
let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\
set encoding=utf-8
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8



" --- CtrlP ----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.mod,*.o



"----indent-guides----
set ts=4 sw=4 et
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2



"----- Air-line-----
" airline options
"let g:airline_section_b = '%{getcwd()}'
"let g:airline_section_c = '%t'
set laststatus=2
let g:airline_powerline_fonts=1
"let g:airline_left_sep=''
"let g:airline_right_sep=''
"let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1



"--- toggle Limelight
nmap <leader>f :Limelight!!<cr>
"nmap <leader>f :Limelight!<cr>
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1



"----- GOYO--------
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" writing style
"nmap <leader>w :setf textile<cr> :Goyo<cr>
nmap <leader>w :Goyo<cr>



""---- base 16 color----
"set background=dark
"colorscheme base16-default
"let base16colorspace=256



"====================
" ---Tmux Line------
"====================
"  Make sure the airline-tmuxline extension is disabled:
let g:airline#extensions#tmuxline#enabled = 0

" Reload the theme automatically
if strlen($TMUX)
    autocmd VimEnter * Tmuxline
endif

" My custom theme:
let g:tmuxline_theme = {
        \ 'a'       : [ 16, 11, 'bold'],
        \ 'b'       : [ 208, 16 ],
        \ 'c'       : [ 16, 208, 'bold'],
        \ 'x.dim'   : [ 243, 16 ],
        \ 'x'       : [ 208, 16 ],
        \ 'y.dim'   : [ 243, 16 ],
        \ 'y'       : [ 208, 16 ],
        \ 'z'       : [ 248, 16, 'bold'],
        \ 'bg'      : [ 208, 16],
        \ 'win'     : [ 24, 16, 'bold' ],
        \ 'win.dim' : [ 24, 16 ],
        \ 'cwin'    : [ 16, 24, 'bold']}

" custom preset with shell commands
"let g:tmuxline_preset = {
      "\'a'    : '#S',
      "\'c'    : ['#(whoami)', '#(uptime  | cut -d " " -f 1,2,3)'],
      "\'win'  : ['#I', '#W'],
      "\'cwin' : ['#I', '#W', '#F'],
      "\'x'    : '#(date)',
      "\'y'    : ['%R', '%a', '%Y'],
      "\'z'    : '#H'}

"" THIS DOES NOT WORK FOR NOW
""  How define and use the status_music variable ?
"if has("unix")
"    let s:uname = system("uname")
"    if s:uname == "Darwin\n"
"      let status_music='call system("osascript ~/dotfiles/applescripts/itunes.scpt". expand("%"))'
"    endif
"    if s:uname == "Linux\n"
"        "let status_music = system("rhythmbox-client --print-playing")
"        let status_music = system("uname")
"    endif
"endif

"       #I - window index
"       #W - window title
"       #F - window flag
"       #I - window index
"       #W - window title
"       #F - window flag
 let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : ['#(~/dotfiles/now_playing.sh)','#{prefix_highlight}#{battery_icon}#{battery_percentage}'],
      \'y'    : ['%R', '%a', '%d-%h-%Y'],
      \'z'    : '#h'}
""      \'x'    : ['#(~/.local/bin/streema.py)#(~/.local/bin/stupify.py)#(rhythmbox-client --no-start --print-playing)','#{prefix_highlight}#{battery_icon}#{battery_percentage}'],
 ""      \'x'    : ['#(~/.local/bin/stupify.py)#(osascript ~/dotfiles/applescripts/spotify.scpt)#(osascript ~/dotfiles/applescripts/itunes.scpt)#(rhythmbox-client --no-start --print-playing)','#{prefix_highlight}#{battery_icon}#{battery_percentage}'],


 " This is commented until the bug in el capitan is fixed
 "See the discussion:
 "https://github.com/tmux/tmux/issues/108#issuecomment-145978196
 "let g:tmuxline_preset = {
      "\'a'    : '#S',
      "\'c'    : ['#(whoami)'],
      "\'win'  : ['#I', '#W'],
      "\'cwin' : ['#I', '#W', '#F'],
      "\'x'    : ['#(osascript ~/dotfiles/applescripts/spotify.scpt)#(osascript ~/dotfiles/applescripts/itunes.scpt)#(rhythmbox-client --print-playing)','#{battery_icon}#{battery_percentage}'],
      "\'y'    : ['%R', '%a', '%d-%h-%Y'],
      "\'z'    : '#h'}

"" configure which stock theme should be used by |:Tmuxline| >
"let g:tmuxline_preset = 'nightly_fox'

"" fine-tune the separators >
let g:tmuxline_powerline_separators = 1
"let g:tmuxline_separators = {
      "\ 'left' : '',
      "\ 'left_alt': ':',
      "\ 'right' : '',
      "\ 'right_alt' : '/',
      "\ 'space' : ' '}




"--- GUNDO ----
nnoremap <F5> :GundoToggle<CR>
"let g:gundo_width          = 60
"let g:gundo_preview_height = 40
let g:gundo_right          = 1


"-----easymotion--------


"----Easy Align ----
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



"--Markdown to HTML
nmap <leader>md :%!/usr/local/bin/markdown --html4tags <cr>



"---Vim Markdown -------
"
set nofoldenable    " disable folding

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_math=0
let g:vim_markdown_frontmatter=0

" PANDOC SYNTAX
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#syntax#conceal#blacklist = ["codeblock_start", "codeblock_delim"]

"---- promptline -----
"https://github.com/edkolev/promptline.vim
"let g:promptline_preset
"let g:promptline_preset = {
      "\'a'    : [ '\h' ],
      "\'b'    : [ '\u' ],
      "\'c'    : [ '\W' ]}
"let g:promptline_preset = {
      "\'a'    : [ '%m' ],
      "\'b'    : [ '%n' ],
      "\'c'    : [ '%d' ]}
let g:promptline_preset = {
        \'a'    : [ promptline#slices#user() ],
        \'b'    : [ promptline#slices#cwd({ 'dir_limit': 3 }) ],
        \'c'    : [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ],
        \'z'    : [ '%T' ]}
        "\'warn' : [ promptline#slices#last_exit_code(), promptline#slices#battery() ],
        "\'z'    : [ promptline#slices#host({'only_if_ssh':1})]}
        "\'z'    : [ promptline#slices#host()]}
        "\'z'    : [ '$(hostname)']}



"--- Timestamp---
let g:timestamp_modelines = 10



"---- Notes vim -----
"let g:notes_directories = ['~/Documents/Notes_vim', '~/Dropbox/Public/Notes_vim']
"let g:notes_directories = ['~/Dropbox/Public/Notes_vim']



"--- SuperTab---
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"let g:SuperTabDefaultCompletionType = "context"



" Markdown
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,README.md  setf markdown

" --- vim-pencil ---
augroup pencil
    autocmd!
    "autocmd FileType markdown,mkd call pencil#init()
    autocmd FileType text         call pencil#init()
    "autocmd FileType tex          call pencil#init()
augroup END


"---Ack---
if has("unix")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        let g:ackprg = "ack"
    endif
    if s:uname == "Linux\n"
        let g:ackprg = "ack-grep"
    endif
endif

" Gist.vim
let g:gist_post_private = 1

" Python-Mode
let g:pymode_options_colorcolumn = 0
let g:pymode_lint_ignore = "E501,W0401,C901"
let g:pymode_rope_lookup_project = 0
let g:pymode_rope=0

 " Switch.vim
let g:switch_mapping = "-"
let g:switch_custom_definitions =
    \ [
    \   ['YES', 'NO'],
    \   ['jpg', 'pdf', 'png', 'eps']
    \ ]

" ligthline.vim
"let g:lightline = {
"      \ 'colorscheme': 'powerline',
"      \ 'component': {
"      \   'readonly': '%{&readonly?"⭤":""}',
"      \ },
"      \ 'separator': { 'left': '⮀', 'right': '⮂' },
"      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
"      \ }


"  ULTISNIPS
"  ---------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
if has("python")
    let g:UltiSnipsExpandTrigger="<Tab>"
    let g:UltiSnipsJumpForwardTrigger="<Tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-Tab>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"

    let g:UltiSnipsSnippetDirectories=["UltiSnips", "MySnippets"]
endif

"highlight Pmenu guibg=brown gui=bold

"  Python-Syntax
"  ==============
let python_highlight_all = 1


"  Thesaurus
"  ----------
nnoremap <Leader>sy :ThesaurusQueryReplaceCurrentWord<CR>

let g:tex_flavor = "tex"
