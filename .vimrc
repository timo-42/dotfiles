set nocompatible

syntax enable
filetype plugin indent on

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'rust-lang/rust.vim'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

" line numbers
set relativenumber
set ruler
set list
" set cursorline


"whitespace
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Disable Backup and Swap files
set noswapfile
set nobackup
set nowritebackup

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.rs set filetype=rust
autocmd BufNewFile,BufRead *.py set filetype=python

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" set encoding
set encoding=utf-8

" Always show status bar
"set laststatus=2

" Always show ALE Gutter
let g:ale_completion_enabled = 1
let g:ale_completion_ = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_fix_on_save = 1
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'python' : ['black', 'isort'],'rust':['rustfmt']}
let g:ale_linters = { 'python': ['pyls','flake8','mypy'], 'ansible':['ansible-lint'], 'rust':['cargo', 'rls', 'analyzer']}
let g:ale_list_window_size = 5 "size of the ale_open_list/error window
let g:ale_open_list = 1
let g:ale_rust_rls_toolchain = 'stable'
let g:ale_sign_column_always = 1

" swap file write time, also used for git-gutter git diff
set updatetime=100

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" use solarized light as theme
let g:airline_theme = 'solarized'

" Load all packages now
packloadall

" Generate help tags from all packages and ignore errors
silent! helptags ALL
