set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplete.vim'
Plugin 'bling/vim-airline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'technosophos/drupal-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'honza/vim-snippets'
Plugin 'dahu/SearchParty'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

if has("autocmd")
  "Drupal *.module and *.install files.
  augroup filetypedetect
    au! BufRead,BufNewFile *.module setfiletype php
    au! BufRead,BufNewFile *.install setfiletype php
    au! BufRead,BufNewFile *.test setfiletype php
    au! BufRead,BufNewFile *.inc setfiletype php
    au! BufRead,BufNewFile *.profile setfiletype php
    au! BufRead,BufNewFile *.view setfiletype php
  augroup END
endif

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-n>     :tabnew<CR>
nnoremap <A-9>     :tablast<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>
inoremap <C-tab>   <Esc>:tabnext<CR>
inoremap <C-n>     <Esc>:tabnew<CR>
inoremap <A-9>     <Esc>:tablast<CR>

" easy indentation
nmap <tab> a<C-t><Esc>
nmap <S-tab> a<C-d><Esc>
vmap <tab> :><CR>gv
vmap <S-tab> :<<CR>gv

" color column
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Custom key mappings
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

" Default colorscheme
" Make sure you have molokai colorscheme present
colorscheme badwolf

" XDebug Debugger port
let g:debuggerPort = 9000

" Move tabs with alt + left|right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" ctrlp custom settings
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:20'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_mruf_case_sensitive = 0

" Store backups in separate directory
" Make sure you do `mkdir ~/vimtmp` before using this setting
set backupdir=~/vimtmp

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" vim-session settings
let g:session_autosave = 0			" Session will be saved manually
let g:session_autoload = 'yes'			" Restore last session
let g:session_directory = "~/.vimsessions"	" Store vim sessions in another location. Make sure you do `mkdir ~/.vimsessions` before using this setting
let g:session_default_to_last = 1		" Restore last session

" Default vim settings
set mouse=a			" Enable mouse
set number			" Show line numbers
set showmatch			" Show matching brackets
set smartcase			" Do smart case matching
set smarttab			" Enable smarttab
set incsearch			" Incremental search
set noswapfile			" Do not create swp file
set cursorline			" highlight current line
set laststatus=2		" Airline
set backspace=indent,eol,start 	" Backspace for dummies
set ignorecase 			" Case insensitive search
set smartcase 			" Case sensitive when uc present
set wildmenu 			" Show list instead of just completing
set wildmode=list:longest,full 	" Command <Tab> completion, list matches, then longest common part, then all.
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

" End of vimrc-install additions.
source $VIMRUNTIME/vimrc_example.vim
