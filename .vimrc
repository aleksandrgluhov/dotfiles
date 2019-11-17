" My vim configuration
" ----------------------------

"Automatically install VimPlug plugin manager
" ----------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins configuration
" ----------------------------
call plug#begin('~/.vim/bundle') "Load plugins from this directory
"Layout plugins
Plug 'tomasiser/vim-code-dark' "VSCode like dark color scheme
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline' "Advanced status bar

"Editing
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'

"Misc
Plug 'jpalardy/vim-slime'
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end() "Stop loading plugins

" Plugins settings configuration
" ----------------------------
colorscheme codedark
let g:airline_powerline_fonts = 1 "Enable/Disable Powerline fonts support
let g:airline#extensions#keymap#enabled = 0 "Enable/Disable current keymap hint
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Custom current cursor position graph
let g:Powerline_symbols='unicode' "Enable/Disable unicode support
let g:airline#extensions#xkblayout#enabled = 0 "Kek
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16 "font
let g:slime_target = "vimterminal"
let g:tex_flavor = 'latex'
let g:vimtex_quickfix_mode = 0

" Basic settings
" ----------------------------
filetype plugin indent on
set encoding=utf-8
set nocompatible
syntax enable
set guioptions=
set showtabline=0
set number number
set wrap linebreak nolist
set textwidth=120
set cursorline
set ttimeoutlen=10
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим
set keymap=russian-jcukenmac
set iminsert=0
set imsearch=0
set ruler

" Idents
" ----------------------------
set shiftwidth=4
set tabstop=4

" Shortcuts mapping
" ----------------------------
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>

" Arrow issue fix
nnoremap <silent> <ESC>OA <UP>
nnoremap <silent> <ESC>OB <DOWN>
nnoremap <silent> <ESC>OC <RIGHT>
nnoremap <silent> <ESC>OD <LEFT>
inoremap <silent> <ESC>OA <UP>
inoremap <silent> <ESC>OB <DOWN>
inoremap <silent> <ESC>OC <RIGHT>
inoremap <silent> <ESC>OD <LEFT>

" Config ends
" ----------------------------
