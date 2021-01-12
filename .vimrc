""""""""""""""""""""""GENERAL"""""""""""""""""""""


" Allow vim to work as expected and is set by default in a ~/.vimrc file
" Set in case of starting vim using custom vimrc
set nocompatible

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Unbind 'Q' in normal mode which enters Ex mode.
nnoremap Q <Nop> 

" Disable audible bell
set noerrorbells visualbell t_vb=

" Enable mouse support.
set mouse+=a

" Disable the default Vim startup message.
set shortmess+=I

" Always show the status line at the bottom
set laststatus=2

" Turn on syntax highlighting.
syntax on

" Show command at btm right of screen
set showcmd

" Indent based on filetype
filetype plugin indent on

" Show existing tab with 4 spaces width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab


""""""""""""""""""""""NAVIGATION"""""""""""""""""""""


" Show actual line number for current line of cursor
" and shows relative line number for other lines to jump between lines quickly
set number
set relativenumber

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch


""""""""""""""""""""""FILE FINDING"""""""""""""""""""""


" Fuzzy file finding from root directory
set path+=**

" Show options when find gives more than one match
set wildmenu


""""""""""""""""""""""NERDTREE PLUGIN"""""""""""""""""""""


" Use backtick to toggle NERDTree window 
noremap ` :NERDTreeToggle<CR>

" Automatically close NERDTree if its only window left "
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


""""""""""""""""""""""CUSTOM MAPPINGS"""""""""""""""""""""


" Map jk to escape key in insert mode 
inoremap jk <Esc>

" Space z to zoom into current split window by opening new tab
" Space s to save
" Space x to save and quit
nnoremap <Space>z :tabnew %<CR>
nnoremap <Space>s :w<CR>
nnoremap <Space>x :x<CR>
