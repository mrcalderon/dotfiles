""""""""""""""""""
" Miguel's vimrc "
""""""""""""""""""

" Tabs -> Spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Show cursor column
set cursorcolumn
set number

" Set map leader
let mapleader = ","

" Quick maps to edit and source vimrc
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"" Vim Plug
" Install Plug if does not exist already
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !mkdir -p ~/.vim/autoload/
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  silent !echo "DATA" > ~/.vim/autoload/plug_new_install
endif

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()

" Install Plugins on fresh install
if filereadable(expand("~/.vim/plug_new_install"))
    PlugInstall
    silent !rm ~/.vim/plug_new_install
    q
endif

" Lightline settings
set laststatus=2    " Show statusline
set noshowmode      " Hide redundant "INSERT" mode
