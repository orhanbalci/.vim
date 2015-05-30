" Vundle

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Highly Recommended
Plugin 'tpope/vim-sensible'        " Good default vim settings
Plugin 'gmarik/vundle'             " Package Manager
Plugin 'jonathanfilip/vim-lucius'  " Dark Theme
Plugin 'chriskempson/base16-vim'   " Base16 Theme
Plugin 'scrooloose/syntastic'      " Syntax checker
Plugin 'vim-scripts/Align'         " Text alignment command
Plugin 'kien/ctrlp.vim'            " Fuzzy file search
Plugin 'scrooloose/nerdtree'       " File tree
Plugin 'jistr/vim-nerdtree-tabs'   " Better extension NerdTree
Plugin 'szw/vim-ctrlspace'         " Workspace Manager
Plugin 'Raimondi/delimitMate'      " Automatic delimeter insertion
Plugin 'tpope/vim-fugitive'        " Git commands
Plugin 'ervandew/supertab'         " Tab completion!
Plugin 'bling/vim-airline'         " Nicer status line
Plugin '907th/vim-auto-save'       " Automatically saves files after edits
"Plugin 'eparreno/vim-l9'
"Plugin 'othree/vim-autocomplpop'

" Language specific
Plugin 'plasticboy/vim-markdown'   " Markdown
Plugin 'wting/rust.vim'            " Rust
Plugin 'dart-lang/dart-vim-plugin' " Dart
Plugin 'othree/html5.vim'          " Html 5
Plugin 'phildawes/racer'           " Rust (more)
Plugin 'leafgarland/typescript-vim'            " Typescript

" colors
"
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'yamafaktory/lumberjack.vim'
Plugin 'vyshane/vydark-vim-color'
Plugin 'carlson-erik/wolfpack'
Plugin 'ajh17/Spacegray.vim'
Plugin 'vim-scripts/strange'
Plugin 'adlawson/vim-sorcerer'
Plugin 'jeetsukumaran/vim-nefertiti'
Plugin 'junegunn/seoul256.vim'

let g:syntastic_disabled_filetypes=['typescript']
let g:syntastic_always_populate_loc_list = 1

" Optional
" Plugin 'fholgado/minibufexpl.vim'

filetype plugin indent on


" Misc editor features

set autoindent
set nobackup
set ruler
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set showcmd
set showmatch
set ignorecase
set incsearch
set autowrite
set ttimeout
set ttimeoutlen=0


" Misc preferences
nnoremap ; :
nnoremap Y y$
au InsertEnter * :set nornu| set nu
au InsertLeave * :set rnu
set rnu
autocmd BufRead,BufNewFile * setlocal nospell
set viminfo=


" NERDTree options
map <Tab> :NERDTreeTabsToggle<CR>
let NERDTreeMinimalUI=1
" Release the usage of ? for backwards searching
let NERDTreeMapHelp='<f1>'

" Tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on


" Remove trailing whitespace on save

function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line('.')
  let c = col('.')
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
filetype plugin on
autocmd BufWritePre * call <SID>StripTrailingWhitespaces()

"smart indent when entering insert mode with i on empty lines
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_ddO"
    else
        return "i"
    endif
endfunction
nnoremap <expr> i IndentWithI()


" Theme
if has('gui_running')
else
    set t_co=256
    colo lucius
    set background=dark
    autocmd BufRead,BufNewFile * colorscheme lucius
    set background=dark
endif

autocmd BufRead,BufNewFile * syntax enable

set fillchars+=vert:_

set cc=81

" Delimitmate
let g:delimitMate_backspace = 2
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1

" Disable shit highlighting
set nohlsearch
let g:loaded_matchparen=1

" Limelight
let g:limelight_conceal_ctermfg = 'gray'


" Autocomplete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt=longest,menuone,preview
noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" don't make .swp or .swo files
set nobackup

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme="hybrid"


" Auto Save
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 0
