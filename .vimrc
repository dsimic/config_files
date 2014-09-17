set noswapfile

" Coding
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

syntax on
filetype plugin indent on


set rtp+=~/.vim/bundle/vundle/
" Plugins {{{
"
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
"
call vundle#rc()

Plugin 'gmarik/vundle'

" EasyMotion plugin
Bundle 'Lokaltog/vim-easymotion'

" Vim.Surround 
Bundle 'tpope/vim-surround'

" Vim.Sparkup 
Bundle 'rstacruz/sparkup'

" Vim.Fugutive
Bundle 'tpope/vim-fugitive'

" Vim.AddonMwUtils
Bundle 'marcweber/vim-addon-mw-utils'

" Vim.SnipMate
Bundle "msanders/snipmate.vim"

" Vim.TComment
Bundle 'tomtom/tcomment_vim'

" Vim.NerdTree
Bundle 'scrooloose/nerdtree'

" Vim.PEP8
Bundle 'nvie/vim-pep8'

" Vim.syntastic
Bundle 'scrooloose/syntastic'
" Turn checker off as default, as it is sloowwww.
let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': []}
" noremap to quickly toggle checker on off.
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
" }}} Plugins
