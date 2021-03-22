call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-rooter'

"nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/gv.vim'

Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"colorthemes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'ap/vim-css-color'

call plug#end()

syntax on

"ayu color settings
"colorscheme ayu
"set termguicolors     " enable true colors support
"let ayucolor="mirage"

"gruvbox theme settings
colorscheme gruvbox
set background=dark

set scrolloff=8

set number
set relativenumber

set tabstop=4 softtabstop=4
set expandtab
set shiftwidth=4
set smartindent

set hlsearch
set incsearch
set ignorecase

let g:mapleader=" "
let NERDTreeShowHidden=1

"mappings
map <leader><CR> :so ~/.vimrc<CR>

map <C-n> :NERDTreeToggle<CR>

map <C-p> :GFiles<CR>
map <leader>pf :Files<CR>

map <leader> <Plug>(easymotion-prefix)

"quickfix motions
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Удобное управление окнами
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

"Удобное управление окнами
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
