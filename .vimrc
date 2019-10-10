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
