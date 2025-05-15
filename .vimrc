
call plug#begin('~/.vim/plugged')

" Python 开发
Plug 'dense-analysis/ale'
Plug 'davidhalter/jedi-vim'
Plug 'vim-python/python-syntax'

" ROS 支持
Plug 'ros/vim-ros'

" SSH远程
Plug 'shime/vim-ssh'

" 多终端支持
Plug 'voldikss/vim-floaterm'

" 文档管理 & Markdown 支持
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}

" 可选增强功能
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" 基础设置
set nocompatible
set number
set relativenumber
set cursorline
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set ignorecase
set smartcase
set hlsearch
set incsearch
set mouse=a
set clipboard=unnamedplus
set showcmd
set ruler
set laststatus=2
set confirm
set backspace=indent,eol,start
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312,cp936
colorscheme desert

" ALE 配置
let g:ale_fix_on_save = 1
let g:ale_linters = {'python': ['flake8', 'mypy']}
let g:ale_fixers = {'python': ['autopep8', 'isort']}

" Jedi 配置
let g:jedi#completions_enabled = 1

" NERDTree 快捷键
nnoremap <F2> :NERDTreeToggle<CR>

" FZF 快捷键
nnoremap <F3> :Files<CR>

" Floaterm 快捷键
nnoremap <F4> :FloatermToggle<CR>

" Vimwiki 设置
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
nnoremap <F5> :VimwikiIndex<CR>

" Markdown Preview 设置
let g:mkdp_auto_start = 0
let g:mkdp_open_to_the_world = 1
let g:mkdp_port = '8080'
nnoremap <F6> :MarkdownPreviewToggle<CR>
