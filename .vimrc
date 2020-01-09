syntax on

" line numbers
set number
set ruler
" set cursorline


"whitespace
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" set encoding
set encoding=utf-8

" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Always show status bar
" set laststatus=2

" Always show ALE Gutter
let g:ale_sign_column_always = 1
let g:ale_linters = { 'python': ['flake8']}
let g:ale_open_list = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
