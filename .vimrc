" vim Plug autoinstall
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim plug
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-scripts/AutoComplPop'

call plug#end()

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

" Load Gruvbox dark and set font
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
set guifont=JetBrains_Mono:h12:cANSI:qDRAFT

" Set listchars to indicate whitespace
" Can be turned on and of with :set list!
:set listchars=tab:>-,space:.,extends:>,precedes:<
" To automatically show whitespace
" :set list!

" Set tabsize to 4 spaces
:set tabstop=4
:set shiftwidth=4
:set expandtab

" Unindent with SHFT Tab in insert mode
inoremap <S-Tab> <C-D>
nnoremap <S-Tab> <<

" Autocompletion setup
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Set linenumbers
set number

" Set relativenumber
 set relativenumber

" To set no number
" set nonumber
