" Vundle

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Highly Recommended
Plugin 'tpope/vim-sensible'             " Good default vim settings
Plugin 'vim-scripts/Align'              " Auto align text
Plugin 'tpope/vim-fugitive'             " Git commands
Plugin 'gmarik/vundle'                  " Package Manager
"Plugin 'scrooloose/syntastic'           " Syntax checker
Plugin 'ctrlpvim/ctrlp.vim'             " Fuzzy file search
Plugin 'scrooloose/nerdtree'            " File tree
Plugin 'jistr/vim-nerdtree-tabs'        " Better extension NerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'    " Git symbols inside NerdTree
Plugin 'airblade/vim-gitgutter'         " Git symbols in the gutter
" Plugin 'vim-ctrlspace/vim-ctrlspace'    " Workspace Manager
Plugin 'Raimondi/delimitMate'           " Automatic delimeter insertion
" Plugin 'ervandew/supertab'              " Tab completion!
"Plugin 'itchyny/lightline.vim'          " Nicer status line
Plugin 'vim-airline/vim-airline'        " Better status line
Plugin 'vim-airline/vim-airline-themes' " Status line themes
Plugin '907th/vim-auto-save'            " Automatically saves files after edits
Plugin 'rking/ag.vim'                   " Integration for the ag file searcher
Plugin 'thirtythreeforty/lessspace.vim' " Remove trailing whitespace
Plugin 'tpope/vim-unimpaired'           " Better quickfix mappings
Plugin 'majutsushi/tagbar'              " Ctags browser
Plugin 'myusuf3/numbers.vim'            " Line numbers
Plugin 'tpope/vim-surround'             " Easily change surrounding quotes, parans etx
Plugin 'tpope/vim-commentary'           " Easy comment code
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

Plugin 'neoclide/coc.nvim'
" Language specific
Plugin 'plasticboy/vim-markdown'    " Markdown
Plugin 'cespare/vim-toml'           " Toml
Plugin 'rust-lang/rust.vim'         " Rust
Plugin 'othree/html5.vim'           " Html 5
"Plugin 'leafgarland/typescript-vim' " Typescript
"Plugin 'PProvost/vim-ps1'           " Powershell
Plugin 'derekwyatt/vim-scala'       " Scala
Plugin 'ryanoasis/vim-devicons'
"Plugin 'racer-rust/vim-racer'

" Rust language server integration
" Plugin 'prabirshrestha/async.vim'
" Plugin 'prabirshrestha/vim-lsp'
" Plugin 'prabirshrestha/asyncomplete.vim'
" Plugin 'prabirshrestha/asyncomplete-lsp.vim'

" colors (graveyard)
" Plugin 'jonathanfilip/vim-lucius'
Plugin 'chriskempson/base16-vim'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-colorscheme-switcher'
" Plugin 'yamafaktory/lumberjack.vim'
" Plugin 'vyshane/vydark-vim-color'
" Plugin 'carlson-erik/wolfpack'
" Plugin 'ajh17/Spacegray.vim'
" Plugin 'vim-scripts/strange'
" Plugin 'adlawson/vim-sorcerer'
" Plugin 'jeetsukumaran/vim-nefertiti'
" Plugin 'junegunn/seoul256.vim'
Plugin 'morhetz/gruvbox'


set hidden
" let g:racer_cmd = "~/.cargo/bin/racer"
" let g:racer_experimental_completer = 1

" au FileType rust nmap gd <Plug>(rust-def)
" au FileType rust nmap gs <Plug>(rust-def-split)
" au FileType rust nmap gx <Plug>(rust-def-vertical)
" au FileType rust nmap <leader>gd <Plug>(rust-doc)

if filereadable(expand("~/.vimrc_background"))
   let base16colorspace=256
     source ~/.vimrc_background
else
     colorscheme gruvbox
endif

filetype plugin indent on

" Misc editor features

set autoindent
set ruler
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set showcmd
set showmatch
set ignorecase
set incsearch
set ttimeout
set ttimeoutlen=0

" Misc preferences
" nnoremap ; :
nnoremap Y y$
set nu
autocmd BufRead,BufNewFile * setlocal nospell
set viminfo=

" NERDTree options
map <silent> <Tab> :NERDTreeTabsToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeMapHelp='<f1>' " Release the usage of ? for backwards searching
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeCascadeOpenSingleChildDir = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "@",
    \ "Renamed"   : "-",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "x",
    \ "Dirty"     : "-",
    \ "Clean"     : "o",
    \ "Unknown"   : "?"
    \ }

" Tabs
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
" filetype plugin indent on

"smart indent when entering insert mode with i on empty lines
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_ddO"
    else
        return "i"
    endif
endfunction
"nnoremap <expr> i IndentWithI()

" Theme
let g:gruvbox_bold = 0
let g:gruvbox_italic = 0
let g:gruvbox_underline = 0
let g:gruvbox_undercurl = 0
let g:gruvbox_contrast_dark = "soft"
let g:gruvbox_contrast_light = "soft"

let g:lightline = { 'colorscheme': 'wombat', }

set background=dark
syntax enable
set t_Co=256
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

set fillchars=

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
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" set completeopt=longest,menuone,preview
" noremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme="hybrid"

" Ctrl-Space
set hidden

" Ctrl-P
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" Auto Save
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 0

" Weird windows workarounds
if has("win32") || has("win16")
    set shell=cmd
    set shellcmdflag=/c
endif

" Syntastic
" let g:syntastic_disabled_filetypes=['typescript']
" let g:syntastic_always_populate_loc_list = 1

" Disable backups and swapfiles
set nobackup
set noswapfile

" Automatically reload the file if it has been changed outside of vim.
set autoread

" Git Gutter
" We save the buffer on every insert anyway
" so this is still pretty realtime
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
set signcolumn=yes
" CtrlSpace
set showtabline=0
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
let g:CtrlSpaceSearchTiming = 10

" Tags
set tags+=rusty-tags.vi;/,~/workspace/rust/rust/rusty-tags.vi
" autocmd BufWrite *.rs :silent !rusty-tags vi
map <silent> <S-TAB> :TagbarToggle<CR>
let g:tagbar_map_help='<F1>'
let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types',
        \'f:functions',
        \'g:enums',
        \'s:structs',
        \'m:modules',
        \'c:consts',
        \'t:traits',
        \'i:implementations',
    \]
\}

" Enable list of buffers for airline status line
let g:airline#extensions#tabline#enabled = 1

" Just show file name
let g:airline#extensions#tabline#fnamemod = ':t'

nnoremap <silent> <Leader>b :TagbarToggle<CR>
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
" let g:UltiSnipsExpandTrigger = "<tab>"


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


