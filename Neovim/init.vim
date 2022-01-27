"""""""""""
" PLUGINS "
"""""""""""
call plug#begin()

" Plug 'https://github.com/tpope/vim-fugitive'
" Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/scrooloose/syntastic'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/flazz/vim-colorschemes'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
" Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plug 'https://github.com/ryanoasis/vim-devicons'
" Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'https://github.com/scrooloose/nerdtree-project-plugin'
" Plug 'https://github.com/PhilRunninger/nerdtree-buffer-ops'
" Plug 'https://github.com/PhilRunninger/nerdtree-visual-selection'
Plug 'https://github.com/christoomey/vim-tmux-navigator'
" Plug 'https://github.com/kien/ctrlp.vim'
" Plug 'https://github.com/ctrlpvim/ctrlp.vim'
" Plug 'https://github.com/junegunn/fzf'
" Plug 'https://github.com/mattn/emmet-vim'
" Plug 'https://github.com/honza/vim-snippets'
Plug 'https://github.com/preservim/tagbar'
" Plug 'https://github.com/terryma/vim-multiple-cursors'
" Plug 'https://github.com/lokaltog/vim-powerline'
Plug 'valloric/youcompleteme'
" Plug 'https://github.com/neoclide/coc.nvim'

call plug#end()



""""""""""""""""""""""""""
" GENERAL CONFIGURATIONS "
""""""""""""""""""""""""""
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set list lcs=tab:\|\ 
set encoding=UTF-8



""""""""""""""""""""""""
" COLOR CONFIGURATIONS "
""""""""""""""""""""""""
colorscheme gruvbox



"""""""""""""""""""""""""""
" NERDTREE CONFIGURATIONS "
"""""""""""""""""""""""""""
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif



"""""""""""""""""""""""""""""
" SYNTASTICS CONFIGURATIONS "
"""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_c_checkers = ['gcc']



""""""""""""""""""""""""""""""
" VIM-AIRLINE CONFIGURATIONS "
""""""""""""""""""""""""""""""
" the separator used on the left side >
let g:airline_left_sep='>'
" the separator used on the right side >
let g:airline_right_sep='<'
" Automatically displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'



""""""""""""""""""""""""""""""""""""
" VIM-AIRLINE-THEME CONFIGURATIONS "
""""""""""""""""""""""""""""""""""""
" let g:airline_theme='simple'



""""""""""""""""""""""""
"TAGBAR CONFIGURATIONS "
""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
