call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

Plug 'easymotion/vim-easymotion'
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

call plug#end()

syntax on
colorscheme gruvbox

set number
set expandtab
set tabstop=2
set background=dark
set hlsearch
set incsearch
set ignorecase

"map leader key
let g:mapleader=','

"mappings
map <C-n> :NERDTreeToggle<CR>
map <C-p> :GFiles<CR>
map <Leader> <Plug>(easymotion-prefix)

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
