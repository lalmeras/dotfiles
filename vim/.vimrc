call plug#begin('~/.vim/bundle')

" sensible defaults
Plug 'tpope/vim-sensible'
" load .vimrc files in folder hierarchy
Plug 'MarcWeber/vim-addon-local-vimrc'
" session and recent files management
Plug 'mhinz/vim-startify'
" multiples colorschmes
Plug 'flazz/vim-colorschemes'
" python validation
Plug 'nvie/vim-flake8'
" python mode
Plug 'python-mode/python-mode', { 'branch': 'develop' }
" vim + tmux
Plug 'christoomey/vim-tmux-navigator'
" vim salt
Plug 'saltstack/salt-vim'
" vim ansible
"Plug 'pearofducks/ansible-vim'
" powerline
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" ctrlp
Plug 'kien/ctrlp.vim'
" vim-surround
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'spf13/vim-autoclose'
Plug 'mileszs/ack.vim'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-eunuch'
" markdown (need tabular)
Plug 'plasticboy/vim-markdown'
"Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-sleuth' "for ruby indentation
"Plug 'godlygeek/tabular'

call plug#end()

set mouse=a
set ttymouse=xterm2
filetype plugin indent on

" fix markdown list indentation"
let g:vim_markdown_new_list_item_indent = 2
autocmd BufNewFile,BufRead *.md filetype plugin indent off
autocmd BufNewFile,BufRead *.conf setfiletype conf

" print invisible chars (tab, eol, ...)
set list
set listchars=tab:▸\ ,eol:¬,trail:·

" x11 clipboard interaction
set clipboard=unnamedplus

" smart indent
""set smarttab
""set tabstop=4
""set shiftwidth=4

set background=dark
let g:pymode_python = 'python3'
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
"let g:pymode_init = 0
let g:pymode_lint = 0

" python-syntax all rules
let g:python_highlight_all = 1
colorscheme solarized
hi Normal ctermbg=none
