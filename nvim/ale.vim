" ale
let g:ale_sign_error = '●'
let g:ale_sign_warning = '»'
nmap <silent> <C-e> <Plug>(ale_next_wrap)
"let g:ale_open_list=1
let g:airline#extensions#ale#enabled = 1
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction
set statusline=%{LinterStatus()}
" Linting on opening
"let g:ale_lint_on_enter = 0
" Lint on save
" let g:ale_lint_on_save = 1
