# dotfiles

My Personal dot configuration files

To clone this file use:
-----------------------
~~~sh
cd ~
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/elchinot7/dotfiles.git .dotfiles
cp .dotfiles/.zshrc .
cp .dotfiles/.vimrc .
cp .dotfiles/.tmux.conf .
cp .dotfiles/ys-modified-chinot7.zsh-theme .oh-my-zsh/custom/themes/
cp .dotfiles/gitconfig .gitconfig
~~~

To install `vim` plugins:

Launch `vim` and run `:PluginInstall`

To install from command line: `vim +PluginInstall +qall`

To install `Tmux` plugins:

Inside a `tmux` session type: 

```sh
Crtl-A I
```


