" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Load plugins here (pathogen or vundle)
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'leafgarland/typescript-vim'
call vundle#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number
set foldcolumn=1

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set ai
set si
set wrap
set sidescroll=1
set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set noshiftround

" Cursor motion
set scrolloff=7
set backspace=indent,eol,start
set whichwrap+=h,l
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim


" Allow hidden buffers
set hidden

" Rendering
set ttyfast
set lazyredraw

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
set mat=2
map <leader><space> :let @/=''<cr> " clear search

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256 
set background=dark

" wildmenu
set wildmenu

" regex
set magic

" Spell checking
:setlocal spell spelllang=en_us,cjk
hi SpellBad ctermfg=Red ctermbg=White
hi SpellCap ctermfg=Blue ctermbg=White
hi SpellLocal ctermfg=DarkBlue ctermbg=White
hi SpellRare ctermfg=Magenta ctermbg=White

" ########### Remappings #################

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Disallow the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Avoiding auto-unindent for # comments. Thanks, indigo945~!
inoremap # x<BS>#

" Compensating for holding the shift key too long 
:command! WQ wq
:command! Wq wq
:command! W w "remember this is for the : commands, not vi commands
:command! Q q

" Wrapping text easier. Less need for ex mode
:noremap Q gq

" Relative Numbering, enter and leave automatically. Toggle not working?
":au FocusLost * :set number
":au FocusGained * :set relativenumber
":au InsertEnter * :set number
":au InsertLeave * :set relativenumber

" Start in a new file with everything folded. Thanks, wincent~!
set foldlevelstart=1

" From map.txt, this eats a character. I use this for expanding abbreviations
" ending with (
func Eatchar(pat)
   let c = nr2char(getchar(0))       
   return (c =~ a:pat) ? '' : c      
endfunc

" Useful abbreviations

" For Rust
iabbrev pl println!(<C-R>=Eatchar('\s')<CR>
