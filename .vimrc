""""" Pathogen
execute pathogen#infect()

""""" Syntax
syntax on
filetype plugin indent on
set smartindent
set autoindent

" Syntastic
"(Recommended Settings)
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_quiet_messages = { 'regex': 'does\snot\sexist$\|cannot\sfind\ssymbol$\|\w*\shas\sno\sdefinition\sof.*\|method\sdoes\snot\soverride\sor\simplement\sa\smethod\sfrom\sa\ssupertype$' }
""""" Display
:set number "line numbers

" Background
set ts=2 sw=2 et
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

""""" Mappings
" Map escape key to jk 
:imap jk <Esc>

" Map leader key to spacebar 
let mapleader="\<space>"

" Normal dot command
vnoremap . :norm.<CR>

" Paste tgoggle to F2 key
set pastetoggle=<F2>

" Change switch windows command, removing <C-w>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tab/Space Indentation mappings for switching between common indentaiton/tab
" modes
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>

"" Tree Explorer
map <leader>nt :NERDTreeToggle<CR> 

"" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
" list buffers using CtrlP, using ;
map <leader>b :CtrlPBuffer<CR> 

"" Vim-Airline theme
let g:airline_theme='molokai'
