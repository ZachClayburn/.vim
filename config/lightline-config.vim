function! GitStatus()
    let [a,m,r] = GitGutterGetHunkSummary()
    let l:msg = ''
    if a > 0
        let l:msg = l:msg . printf('+%d ', a)
    endif
    if m > 0
        let l:msg = l:msg . printf('~%d ', m)
    endif
    if r > 0
        let l:msg = l:msg . printf('-%d ', d)
    endif
    return l:msg
endfunction

let g:lightline = {}
let g:lightline.colorscheme = 'dracula'
let g:lightline.inactive = { 'left': [ [ 'filename' ], [ 'modified' ] ] }
let g:lightline.component = { 'git': '%{GitStatus()}' }
let g:lightline.active = { 'left': [ ['mode', 'paste'], [ 'readonly', 'filename', 'modified', 'git' ] ] }
set noshowmode
" GitGutterGetHunkSummary()
