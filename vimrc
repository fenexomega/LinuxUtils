set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'tikhomirov/vim-glsl'

Plugin 'kien/ctrlp.vim'

Plugin 'Raimondi/delimitMate'

Plugin 'WolfgangMehner/vim-plugins'

Plugin 'derekwyatt/vim-fswitch'

Plugin 'sentientmachine/Pretty-Vim-Python'

Plugin 'LaTeX-Box-Team/LaTeX-Box'

Plugin 'xolox/vim-lua-ftplugin'

Plugin 'xolox/vim-misc'

Plugin 'tpope/vim-commentary'

Plugin 'jelera/vim-javascript-syntax'

Plugin 'moll/vim-node'

Plugin 'mattn/emmet-vim'

Plugin 'ahayman/vim-nodejs-complete'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'sudar/vim-arduino-syntax'

Plugin 'sudar/vim-arduino-snippets'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help<F5><F5><F5><F5>
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


syntax on
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set number
let g:ycm_global_ycm_extra_conf = '/home/jordy/.ycm_extra_conf.py'
map <F4> :FSHere <CR> 
set pastetoggle=<F2>
map <F5> :set spell spelllang=pt_br <CR>
map <F6> :set nospell <CR>
:let mapleader = ","
let g:lua_complete_omni = 1
set splitbelow
set splitright
colorscheme Tomorrow-Night-Bright
vmap <C-.> :<C-U>Commentary <CR>
imap <C-.> :<C-U>Commentary <CR>
"imap  <C-;> :Commentary <CR>


"Max out the height of the current split
"ctrl + w _

"Max out the width of the current split
"ctrl + w |

"Normalize all split sizes, which is very handy when resizing terminal
"ctrl + w =
" MySQL
let g:dbext_default_profile_postgres_local = 'type=PSQL:user=postgres'

let g:UltiSnipsExpandTrigger="<C-b>"
