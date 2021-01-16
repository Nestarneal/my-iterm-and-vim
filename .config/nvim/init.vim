"dein Scripts-----------------------------

if &compatible
  set nocompatible
endif

set runtimepath+=/Users/user_name/.local/share/nvim/dein//repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/user_name/.local/share/nvim/dein/')
  call dein#begin('/Users/user_name/.local/share/nvim/dein/')

  call dein#add('/Users/user_name/.local/share/nvim/dein//repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#add('lifepillar/vim-solarized8')
  call dein#add('preservim/nerdtree')
  call dein#add('ntpeters/vim-better-whitespace')
  call dein#add('kien/ctrlp.vim')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('elixir-editors/vim-elixir')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-endwise')
  call dein#add('alvan/vim-closetag')
  call dein#add('Yggdroot/indentLine')
  call dein#add('tpope/vim-fugitive')
  call dein#add('frazrepo/vim-rainbow')
  call dein#add('pangloss/vim-javascript')
  call dein#add('tpope/vim-rails')
  call dein#add('ruby-formatter/rufo-vim')
  call dein#add('rakr/vim-one')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

" Enable autocomplete
let g:deoplete#enable_at_startup = 1

" Config for lifepillar/vim-solarized8
set background=dark
colorscheme one

" Show the line number
set number

" Copy to system clipboard
set clipboard+=unnamedplus

" Set hotkey for NERDTree
map <C-e> :NERDTreeToggle<CR>

" Highlight current line
set cursorline
:hi CursorLine ctermbg=238

" Show trailing whitespaces
" and remove them on save
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0

" ctrlp.vim
set wildignore+=*.swp
let g:ctrlp_custom_ignore = '\v[\/](\.git|deps|node_modules|_build)$'

" Switch buffers more comfortable.
:noremap <silent> <C-j> :bprevious<CR>
:noremap <silent> <C-k> :bnext<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" vim-airline-themes
let g:airline_theme='one'

" Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" vim-rainbow
let g:rainbow_active = 1

" Enable rufo (RUby FOrmat)
let g:rufo_auto_formatting = 1

" Change selected color
highlight Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey40
