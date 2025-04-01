" required for vi improved
set nocompatible
filetype off

runtime macros/matchit.vim

" plugins
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'kana/vim-textobj-user'
Plug 'kien/ctrlp.vim'
Plug 'mechatroner/rainbow_csv'
Plug 'morhetz/gruvbox'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
call plug#end()

" Visual effects
syntax on " syntax highlighting
set number " show line numbers
set laststatus=2 " always show status line
set showcmd " show partial vim command on bottom right
set ruler " display cursor position on bottom right
set colorcolumn=80 " show line length guide
highlight ColorColumn guibg=Black ctermbg=0 " guide color
" set cursorline " underline the line with cursor on it
set hlsearch " highlight saerch occurrences
set visualbell " use visual effect instead of beeping on error
set t_vb= " the effect instead of beeping (empty for no effect)

" Behavior
set hidden " store changes in buffers
set ignorecase " ignore case for search
set smartcase " do not ignore case if query contains uppercase letters
set backspace=indent,eol,start
set autoindent " follow indent of the previous line
set confirm " use a dialog when an operation has to be confirmed
set tabstop=2
set shiftwidth=2
set smartindent " smart indent when starting a new line
set smarttab " insert <shiftwidth> whiespaces on <Tab>
set softtabstop=2 " 2 whitespaces used for <Tab>
set expandtab " use spaces for >> and <Tab>
filetype indent on
set tags=.tags,tags

" Remove trailing whitespaces
autocmd BufWritePre *.rb normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.ts normal m`:%s/\s\+$//e ``
autocmd BufWritePre *.js normal m`:%s/\s\+$//e ``

set mousehide " hide cursor when typing
set mouse=a " suppot for mouse navigation
set termencoding=utf-8
set backspace=indent,eol,start whichwrap+=<,>,[,]
set showtabline=1

set linebreak " wrap long lines, no horizontal scrolling (break bw words)
set encoding=utf-8
set fileencodings=utf8,cp1251

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set clipboard=unnamed

" ^N for opening Nerd tree
nnoremap <C-N> :NERDTreeToggle<CR>
" ^\ for revealing focues file in Nerd tree
nnoremap <C-\> :NERDTreeFind<CR>

iabbrev saerch search

let g:ctrlp_clear_cache_on_exit = 0 " persist cache of CTRL-P between sessions
" use F5 in CTRL-P menu to clear cache
let g:ctrlp_cache_dir = $XDG_CACHE_HOME.'/ctrlp' " where to store CTRL-P cache
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

set shell=/bin/zsh\ -li

colorscheme gruvbox
set background=dark
if has("gui_macvim")
  set guifont=Monaco:h13
endif
