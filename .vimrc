set hidden
set number
set nocompatible
set nocp
set number relativenumber
set hlsearch
filetype plugin on
set grepprg=rg\ --vimgrep\ --smart-case\ --follow
set undodir=~/.vim/undo_dir
set undofile
set ignorecase smartcase

nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <esc><esc> :noh<return><esc>

" remap chunk deletion to include undo breakpoints
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

" INSTALL VIM-PLUG IF IT IS NOT PRESENT
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
