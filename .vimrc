set nocompatible

syntax on
filetype plugin indent on

" line numbers
set number
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

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" set encoding
set encoding=utf-8

" Always show status bar
"set laststatus=2

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" Always show ALE Gutter
let g:ale_sign_column_always = 1
let g:ale_linters = { 'python': ['pyls','flake8','mypy'], 'ansible':['ansible-lint']}
let g:ale_fixers = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'python' : ['black', 'isort']}
let g:ale_fix_on_save = 1
let g:ale_open_list = 1
let g:ale_list_window_size = 5 "size of the ale_open_list/error window
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_completion_enabled = 1

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
