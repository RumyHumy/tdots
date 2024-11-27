set relativenumber
set shiftwidth=4
set tabstop=4

:set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

let mapleader=";"

" " Copy to clipboard
vnoremap <leader>y  "+y
nnoremap <leader>y  "+y
nnoremap <leader>yy "+yy

" " Cut to clipboard
vnoremap <leader>d  "+d
nnoremap <leader>d  "+d
nnoremap <leader>dd "+dd

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" " One line up/down
"noremap h gh
"noremap j gj
"noremap <Up> g<Up>
"noremap <Down> g<Down>

let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
