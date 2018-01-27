set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" YouComepleteMe c family semantic completion
" let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

" You complete me
" Plugin 'Valloric/YouCompleteMe'
Plugin 'jewes/Conque-Shell'
" All of your Plugins must be added before the following line

" path to directory where library can be found
"  let g:clang_library_path='/usr/lib/llvm-3.8/lib'
" or path directly to the library file
" let g:clang_library_path='/usr/lib64/libclang.so.3.8'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nu  " enable numbering
" courtesy: dougblack.io

syntax enable  " enable syntax processing

set tabstop=2  " number of visual spaces per tab
set expandtab  " tabs are spaces 

set showcmd  " show command in bottom bar 
set cursorline  " highlight current line
set cursorcolumn " highlight the cursor column

set wildmenu  " visual autocomplete for command menu
" set lazyredraw  " redraw only when we need to
set showmatch  " highlight matching brackets

set incsearch  " search as characters are entered
set hlsearch  " highlight matches

" turn off search highlight Control + L
nnoremap <silent> <C-l> :nohl<CR><C-l> 

set foldenable  " enable folding
set foldlevelstart=10  " open most folds by default
set foldnestmax=10  " 10 nest fold max
set foldmethod=syntax  " Find out why the foldmethod=indent does not work 

" space open/closes folds
nnoremap <space> za 

" move beginning/end of line
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" set default colorscheme
" :highlight CursorLine guifg=black guibg=yellow
" :highlight Cursor guifg=black guibg=orange
" :highlight Visual guifg=black guibg=yellow

" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1

colo badwolf
