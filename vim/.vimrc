" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" https://github.com/VundleVim/Vundle.vim/issues/16
" ftdetect ignored workaround
filetype off
call vundle#begin()

"Plugin 'godlygeek/tabular'
" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
" sensible defaults
Plugin 'tpope/vim-sensible'
" load .vimrc files in folder hierarchy
Plugin 'MarcWeber/vim-addon-local-vimrc'
" session and recent files management
Plugin 'mhinz/vim-startify'
" multiples colorschmes
Plugin 'flazz/vim-colorschemes'
" python validation
Plugin 'nvie/vim-flake8'
" python mode
Bundle 'klen/python-mode'
" vim + tmux
Plugin 'christoomey/vim-tmux-navigator'
" vim salt
Plugin 'saltstack/salt-vim'
" vim ansible
"Plugin 'pearofducks/ansible-vim'
" powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" ctrlp
Plugin 'kien/ctrlp.vim'
" vim-surround
Plugin 'tpope/vim-surround'
Plugin 'mbbill/undotree'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'spf13/vim-autoclose'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-eunuch'
" markdown (need tabular)
Plugin 'plasticboy/vim-markdown'
"Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-sleuth' "for ruby indentation

call vundle#end()

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
" python-syntax all rules
let g:python_highlight_all = 1
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
colorscheme solarized
hi Normal ctermbg=none
