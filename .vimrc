call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'xypnox/vim-material'

" Initialize plugin system
call plug#end()

" Oceanic
let g:material_style='oceanic'
set background=dark
colorscheme vim-material
