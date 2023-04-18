call plug#begin()

" Language Server Protocol (LSP) support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File explorer
Plug 'lambdalisue/fern.vim'

Plug 'ctrlpvim/ctrlp.vim'

" auto completing plugin
Plug 'jiangmiao/auto-pairs'

" Status bar
Plug 'vim-airline/vim-airline'

" Git integration
Plug 'tpope/vim-fugitive'

call plug#end()

set number
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

nnoremap <C-b> :Fern .<CR>

" Open CtrlP with Ctrl+P
nnoremap <C-p> :CtrlP<CR>

" Ignore files in these directories
let g:ctrlp_custom_ignore = 'node_modules\|vendor'

" Set the search mode to 'full path'
let g:ctrlp_by_filename = 0
let g:ctrlp_by_full_path = 1

" coc.nvim configuration
let g:coc_global_extensions = ['coc-python', 'coc-clangd', 'coc-tsserver']

" Enable auto-pairs
let g:auto_pairs_map_keys = 0
let g:auto_pairs_start_insert = 1
let g:auto_pairs_fallback = 1
autocmd FileType * let b:auto_pairs = 1
autocmd FileType * let g:CocConfig = '{"pairs.enableInsertion": true}'

set guicursor=n-v-c:block-Cursor/lCursor-blinkwait175-blinkon200-blinkoff150

Plug 'preservim/nerdtree'
