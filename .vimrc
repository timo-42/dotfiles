syntax on

" line numbers
set number
set ruler
set cursorline


"whitespace
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
set laststatus=2

" Always show ALE Gutter
let g:ale_sign_column_always = 1
