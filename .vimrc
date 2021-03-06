set nocompatible
filetype off

set backup		" keep a backup file (restore to previous version)
if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
endif

" Switch on highlighting the last used search pattern.
set hlsearch

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!
  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
  augroup END
else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

" Set tabs to insert 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Turn on line numbering
set number

" Set backup and swap files to all be saved in a single directory at 
" the specified path.
set undodir=~/.vim/undo//
set backupdir=~/.vim/backups//
set directory=~/.vim/swp//

" vim-plug: Vim plugin manager
" (see /usr/share/vim-plug/vimrc.sample for more info)
" ============================
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Plugins go here. Use single quotes. Format looks like:
" Plug 'source-of-plugin'
" Then call :PlugInstall when running vim to install.

Plug 'markvincze/panda-vim'

" Initialize plugin system
call plug#end()
