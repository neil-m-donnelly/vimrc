set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'moll/vim-node'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/guicolorscheme.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'noah/vim256-color'

" front end
Plugin 'Quramy/tsuquyomi'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'leafgarland/typescript-vim'
"Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-ragtag'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"  'ascenator/L9', {'name': 'newL9'}





" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"colorscheme badwolf
"colorscheme jellybeans
"set t_Co=256

syntax enable "enable syntax processing
syntax on
" smyck's comments are too dark as standard. Must come after syntax enable and
" syntax on!
colorscheme smyck
highlight Comment ctermfg=245

"ui
set number "show line numbers
set showcmd "show command in bottom bar (last command in bottom right)
set cursorline "highlight current line
filetype indent on " load filetype-specific indent rules
set wildmenu "autocomple for command menu
"set lazyredraw " redraw when we have to
set showmatch "show matching parens

"searching
set incsearch "search as chars are entered
set hlsearch "highlight matches
" turn off search highlighting: ,<space>
nnoremap <leader><space> :nohlsearch<CR>



"tab settings
set tabstop=2 "spaces when reading a tab
set softtabstop=2 "spaces when editing a tab
set expandtab " tabs are spaces
set shiftwidth=2 "shiftwidth on carrage return 

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" put backups into a temp foler in the home directory
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" airline settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" NERDTREE
" ui tweeks
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1 "show hidden files by default
" auto close nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
