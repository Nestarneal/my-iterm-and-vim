set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim theme.
Plugin 'lifepillar/vim-solarized8'

" GitHub Flavored Markdown syntax highlight.
Plugin 'rhysd/vim-gfm-syntax'

" Markdown preview.
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}

" Render mode, branch, filename, location, and other useful informations.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git wrapper.
Plugin 'tpope/vim-fugitive'

" Tree explorer.
Plugin 'scrooloose/nerdtree'

" Fuzzy search file.
Plugin 'ctrlpvim/ctrlp.vim'

" Elixir
Plugin 'elixir-editors/vim-elixir'
Plugin 'mhinz/vim-mix-format'

" Javascript
Plugin 'pangloss/vim-javascript'

" Autocomplete
Plugin 'ycm-core/YouCompleteMe'
Plugin 'slashmili/alchemist.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on

" Put your non-Plugin stuff after this line

" Vim theme dracula.
syntax on
set background=dark
colorscheme solarized8

" Switch buffers more comfortable.
:noremap <silent> <C-j> :bprevious<CR>
:noremap <silent> <C-k> :bnext<CR>

" vim-instant-markdown.
" Can use ':InstantMarkdownPreview' and ':InstantMarkdownStop' to toggle
" preview.
let g:instant_markdown_autostart = 0
let g:instant_markdown_port = 8090

" Enable line number presentation.
:set number

" Highlight current cursor line.
:set cursorline
:hi CursorLine ctermbg=238

" Highlight trailing spaces.
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Remove trailing spaces on save automatically.
autocmd BufWritePre * %s/\s\+$//e

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" vim-airline-themes
let g:airline_theme='bubblegum'

" Enable clipboard functionality.
set clipboard+=unnamed

" nerdtree
map <C-e> :NERDTreeToggle<CR>

" Backspace
set backspace=indent,eol,start

" Tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Highlight search.
set hlsearch
