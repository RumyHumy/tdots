set relativenumber
set shiftwidth=4
set tabstop=4

inoremap <C-j> <C-O>a{<CR><CR>}<C-O>k<Tab>

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

let mapleader=";"

" " Copy to clipboard
vnoremap <leader>y  "+y
nnoremap <leader>y  "+y
nnoremap <leader>yy "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
