call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'andymass/vim-matchup'
Plug 'alvan/vim-closetag'
Plug 'Valloric/MatchTagAlways'
" Plug 'tpope/vim-endwise'
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Plug 'jesseleite/vim-noh'

" Start screen
Plug 'mhinz/vim-startify'

" Colors / themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasiser/vim-code-dark'
Plug 'ap/vim-css-color'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

" File management
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'kevinhwang91/rnvimr'
Plug 'vifm/vifm.vim'
Plug 'airblade/vim-rooter'

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'easymotion/vim-easymotion'
Plug 'unblevable/quick-scope'

" Text edit improvements
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

" Text objects
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Float terminal
Plug 'voldikss/vim-floaterm'

Plug 'ap/vim-buftabline'
Plug 'roman/golden-ratio'

call plug#end()
