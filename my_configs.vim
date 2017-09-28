" Open MRU.vim to see the recently open files (<leader>f):
map <leader>f :MRU<CR>

" Open bufexplorer to see and manage the current buffers (<leader>o):
map <leader>o :BufExplorer<cr>

" Open ctrlp.vim plugin to quickly find a file or a buffer (<leader>j or <ctrl>f):
let g:ctrlp_map = '<c-f>'

" NERD Tree mappings:
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

" goyo.vim and vim-zenroom2 lets you only focus on one thing at a time. It removes all the distractions and centers the content. It has a special look when editing Markdown, reStructuredText and textfiles. It only has one mapping. (<leader>z)
map <leader>z :Goyo<cr>

" Smart way to move between windows (<ctrl>j etc.):
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close current buffer
map <leader>bd :Bclose<cr>

" Close all buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Open ack.vim for fast search:
map <leader>g :Ack

" Toggle paste mode on and off:
map <leader>pp :setlocal paste!<cr>

colorscheme base16-default-dark

let NERDTreeMapOpenInTab='<ENTER>'

"Set line numbers to be visible
set number

" Set relative number
set rnu

" Turn filetypes plugin on
filetype plugin on

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_debug=0

let g:syntastic_javascript_checkers = ['eslint']
nnoremap <leader>cd :cd %:p:h<CR>

" Indent settings
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
