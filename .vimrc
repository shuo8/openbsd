"--------------------------------------------------------------------
"   HIGHLIGHTING AND SYNTAX
"--------------------------------------------------------------------
syntax on                       " Enable syntax highlighting
set t_Co=256                    " Allow vim to display all colours
set showmatch                   " Highlight matching parentheses
set background=dark
colorscheme desert

"--------------------------------------------------------------------
"   INDENTATION
"--------------------------------------------------------------------
set tabstop=8                   " Set the number of visual spaces per tab
"set softtabstop=4               " Set the number of spaces a tab counts as
"set expandtab                   " Write tabs as spaces
set autoindent                  " Turn on auto-indentation
set shiftwidth=8                " Set the number of columns to indent with rein$
filetype indent on              " Allow loading of language specific indentation

"--------------------------------------------------------------------
"   COLOUR COLUMN
"--------------------------------------------------------------------
set colorcolumn=80              " Create a column at the 80 character line
highlight ColorColumn ctermbg=8 guibg=lightgrey

"--------------------------------------------------------------------
"   MISCELLANEOUS
"--------------------------------------------------------------------
set number                      " Show line numbers
set wildmenu                    " Turn on the autocomplete menu
set mouse=a                     " Enable mouse support
set ruler                       " Display the ruler in the bottom right corner
set cursorline                  " Highlight the current line
set backspace=indent,eol,start  " Allow backspace to work across lines

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set tags=./tags;/

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif

call plug#begin()

Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/yegappan/taglist.git'

call plug#end()
