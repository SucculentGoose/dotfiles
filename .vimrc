execute pathogen#infect()
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Colors
colorscheme quantum
syntax enable

" Tabs/Spaces
set tabstop=2 "number of visual spaces per tab
set softtabstop=2 "number of spaces when editing
set shiftwidth=2
set expandtab "tabs are spaces

" UI
set number "show line numbers
set showcmd "show command in bottom bar
set cursorline "highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu
set lazyredraw
set showmatch " highlight matching [{()}]

" Searching
set incsearch "search as characters are entered
set hlsearch "highlight matches

"turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable "enable folding
set foldlevelstart=10 "open most folds by default
set foldnestmax=10 "10 nested fold max
"space open/closes folds
nnoremap <space> za
set foldmethod=indent "fold based on indent level

" Tmux
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup


" set autoindent
" set smartindent

" Plugins
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
" Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdcommenter'
Plugin 'yggdroot/indentline'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
