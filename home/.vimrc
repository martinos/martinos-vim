set background=dark
set hlsearch
set incsearch
set nocompatible  
set t_Co=16

" Adding OSX clipboard support
map <C-S-c> :r !pbcopy<CR>
nmap <C-S-c> :.w !pbcopy<CR><CR>
vmap <C-S-c> :w !pbcopy<CR><CR>
map <C-S-v> :set paste<CR>:r ! pbpaste<CR>
map <leader>t :FuzzyFinderFile<CR>
imap <D-space> <ESC>

" filetype plugin indent on " Enable filetype-specific indenting and plugins
" colorscheme evening
set nowrap
set ignorecase
syntax on
" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim
"
autocmd BufRead,BufNewFile *.ru set filetype=ruby
augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END


set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
