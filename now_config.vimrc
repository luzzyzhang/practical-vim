"set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set colorcolumn=80
set ruler
hi ColorColumn term=bold cterm=bold guibg=0 ctermbg=235
set splitright
let python_highlight_all=1
set foldmethod=indent
set cuc cul
set noeb vb t_vb=
set number
"colorscheme vividchalk
"colorscheme valloric 
"colorscheme lanox
colorscheme solarized
"set incsearch
set hlsearch
set autochdir
set title
"set tags=./tags
"set clipboard=unnamed
"============================================
"CtrP config
set runtimepath^=~/.vim/bundle/ctrlp.vim
set path+=/Users/luzzy/winterfell/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
"============================================
"YouCompleteMe config
let g:loaded_youcompleteme=1
set completeopt-=preview
let g:ycm_auto_trigger=1
let g:ycm_add_preview_to_completeopt=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_key_invoke_completion='<C-]>'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_stop_completion = ['<Enter>']
let g:ycm_python_binary_path='/usr/local/bin/python3'
"let g:ycm_goto_buffer_command='new-tab'
"-------------------------------------------
let mapleader = ";"
nnoremap <leader>gd:YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gt :YcmCompleter GoToDefinitionElseDeclaration<CR>
"============================================
syntax on
"autocmd BufWritePost *.py call Flake8()
execute pathogen#infect()
let pymode = 0
filetype plugin indent on
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
"hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
"hi CursorColumn cterm=NONE ctermbg=lightblue ctermfg=NONE guibg=darkred guifg=white

"hi CursorColumn term=bold cterm=bold guibg=0 ctermbg=235


"Pathogen load
filetype off

"call pathogen#infect()
"call pathogen#helptags()
filetype plugin indent on
if exists('$TMUX')
    set term=screen-256color
endif
