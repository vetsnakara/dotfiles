source $HOME/.config/nvim/plugins.vim

" Base settings
" ==============================
syntax on

" filetype on
" filetype plugin on
" filetype indent on

set scrolloff=8

set number
set relativenumber

set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent

set hlsearch
set incsearch
set ignorecase

set splitbelow
set splitright

" Color theme
" ==============================
"ayu color settings
" colorscheme ayu
" set termguicolors     " enable true colors support
" let ayucolor="mirage"

 colorscheme gruvbox
 set background=dark

" colorscheme codedark

" let g:loaded_matchit=1
let g:closetag_filenames = '*.html,*.jsx,*.tsx,*.twig'

let g:mta_filetypes = {
			\ 'html': 1,
			\ 'twig': 1,
			\ 'typescriptreact': 1,
			\}								

" let g:fzf_preview_window = ['right:50%', 'ctrl-/']
" let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
" let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.1  }  }

" Default fzf layout
" - Popup window
" let g:fzf_layout = { 'window': { 'width': 0.1, 'height': 0.6 }, 'down': '40%' }
" let g:fzf_layout = { 'up': '50%' }
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo', 'border': 'sharp'  }  }

" - down / up / left / right
" let g:fzf_layout = { 'down': '40%' }
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo'  }  }

let $FZF_DEFAULT_OPTS = '--layout=reverse'
"let g:fzf_layout = { 'window': 'call OpenFloatingWin()'  }

"function! OpenFloatingWin()
"  let height = &lines - 3
"  let width = float2nr(&columns - (&columns * 2 / 10))
"  let col = float2nr((&columns - width) / 2)

"  "Set the position, size, etc. of the floating window.
"  "The size configuration here may not be so flexible, and there's room for further improvement.
"  let opts = {
"        \ 'relative': 'editor',
"        \ 'row': height * 0.3,
"        \ 'col': col + 30,
"        \ 'width': width * 2 / 3,
"        \ 'height': height / 2
"        \ }

"  let buf = nvim_create_buf(v:false, v:true)
"  let win = nvim_open_win(buf, v:true, opts)

"  "Set Floating Window Highlighting
"  call setwinvar(win, '&winhl', 'Normal:Pmenu')

"  setlocal
"        \ buftype=nofile
"        \ nobuflisted
"        \ bufhidden=hide
"        \ nonumber
"        \ norelativenumber
"        \ signcolumn=no
"endfunction

" Leader key
" ==============================
let g:mapleader=" "

" Golden Ratio
" ==============================
" let g:golden_ratio_autocommand = 0

" Limelight
" ==============================
let g:limelight_conceal_ctermfg = 'gray'
nmap <leader>ll :Limelight!!<CR>

" Goyo
" ==============================
nmap <leader>gy :Goyo<CR>

" NERDTree
" ==============================
let NERDTreeShowHidden=1 " Always show dot (hidden) files
let NERDTreeQuitOnOpen=1 " Close the NERDTree after opening a file

" Ranger
" ==============================
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

let g:rnvimr_presets = [
            \ {'width': 0.600, 'height': 0.600},
            \ {},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
            \ ]

let g:rnvimr_ranger_views = [
            \ {'minwidth': 90, 'ratio': []},
            \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
            \ {'maxwidth': 49, 'ratio': [1]}
            \ ]

let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.7 * &columns)),
            \ 'height': float2nr(round(0.7 * &lines)),
            \ 'col': float2nr(round(0.15 * &columns)),
            \ 'row': float2nr(round(0.15 * &lines)),
            \ 'style': 'minimal'
            \ }

" Startify
" ==============================
let g:startify_bookmarks = [
            \ { 'b': '~/.bashrc'  },
            \ { 'v': '~/.config/nvim/init.vim'  },
            \ { 'p': '~/.config/nvim/plugins.vim'  },
            \ ]

let g:startify_lists = [
            \ { 'header': ['Bookmarks'],     'type': 'bookmarks'  },
            \ { 'header': ['MRU'],           'type': 'files'  },
            \ { 'header': ['MRU '.getcwd()], 'type': 'dir'  },
            \ ]

" Mappings
" ==============================
" Disable arrow keys
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

" Resize splits (not works)
" noremap <C-Down> ^W-
" noremap <C-Up> ^W+
" noremap <C-Left> ^W-
" noremap <C-Right> ^W+

nnoremap <leader>f :Rg <C-R><C-W><CR>
nnoremap <CR> :noh<CR>

" Startify
nmap <leader>s :Startify<cr>

" Buftabline
" nnoremap <C-n> :bnext<CR>
" nnoremap <C-p> :bprev<CR>

" Source config
map <leader><CR> :so ~/.config/nvim/init.vim<CR>

" NERDTree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

" Fuzzy search
map <C-p> :GFiles<CR>
map <leader>pf :Files<CR>

" EasyMotion
map <leader><leader>  <Plug>(easymotion-prefix)
map <leader><leader>w  <Plug>(easymotion-w)

" Movevent between windows
map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

" Functions
" ==============================
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

" Commands
command! FzfDir call fzf#run(fzf#wrap({'source': 'find * -type d'}))  " fuzzy search directories
" Search a file but only within the files that are changed (Git-wise)
command! Fzfc call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --modified'}))

