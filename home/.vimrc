set bs=2
set background=dark
set hlsearch
set ignorecase
set incsearch
set nocompatible          " We're running Vim, not Vi!

syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins
colorscheme desert
set nowrap


" Adding OSX clipboard support
"-------------------------------------------------- 
"map <C-S-c> :r !pbcopy<CR>
"nmap <C-S-c> :.w !pbcopy<CR><CR>
"vmap <C-S-c> :w !pbcopy<CR><CR>
"map <C-S-v> :set paste<CR>:r ! pbpaste<CR>

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim
"
augroup myfiletypes
	" Clear old autocmds in group
	autocmd!
	" autoindent with two spaces, always expand tabs
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
	autocmd FileType perl set ai sw=4 sts=4 et
augroup END

autocmd BufNewFile,Bufread *.csv call CSVSELECT()
map <F9> :call CSV_HighlightPrevCol()<CR>
map <F10> :call CSV_HighlightNextCol()<CR>
map <F11> :call CSV_goto_field()<CR>
map <F12> :call CSV_SE()<CR>
hi perlcomment ctermfg=Green
