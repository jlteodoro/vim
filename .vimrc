set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'


" start typing and with the tab it automatically inserts a snippet
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
" in Visual mode, select text, type S and then the surround (e.g.: <div>) and
" it will surround it with it. The cs command (change surround) works in
" normal mode, so you can change from a div to something else by going inside
" the div and typing cst<somethingelse>
Plugin 'tpope/vim-surround'
" use gc to toggle comment of a line or <CTRL>_b (control underline then b) to
" toggle commenting of a block
Plugin 'vim-scripts/tComment'
Plugin 'scrooloose/nerdtree'

" this makes the matching work with %
Plugin 'tmhedberg/matchit'

call vundle#end()            " required
filetype plugin indent on    " required


set clipboard=unnamed
set nocp
"Hide toolbar
set guioptions-=m
set guioptions-=T
filetype plugin on
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
"set t_Co=256
colorscheme colorful256
syntax on

nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap + maO<esc>`a
noremap <F3> :Autoformat<CR>
nmap <C-N><C-N> :set invnumber<CR>
"nmap <C-S> :w<CR>
nmap <C-P>  <C-W><C-P>
set backspace=2
set vb
set fdm=syntax
set foldnestmax=5
"Enable identation for c++
set cindent
"Turned off omnicomplete because it is too slow
"set ofu=syntaxcomplete#Complete
"automatically hide unsaved buffers
set hidden
let OmniCpp_LocalSearchDecl = 1
"Enable search as you type
set is
"Enable case insensitive search
"set ic
set autochdir
:iabbrev whk while(<Left>
:iabbrev fi if()<Left> 
:iabbrev stk static_cast< <Left><Left>
:iabbrev _T _T("")<Left><Left>
"Header navigation
nmap ,h :find %:t:r.h<CR>
nmap ,H :find %:t:r.cpp<CR>

"enable completion for longest word
set wildmode=longest
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"limits the number of characters per line
set dictionary=~\SkyDrive\Documents\VIM\Dictionary.txt

"Specific to this computer
set tags+=~/.vim/tags/cpp_src/tags
set tags+=~/Work/PRODUCT/DEV-Wistron/Core-RT/tags
"set tags+=~/Work/PRODUCT/DEV/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/include/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/ObjectLibrary/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/BuiltInFunctions/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/Data/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/Helper/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/include/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/ObjectLibrary/tagsdb/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/ScreenTask/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/Script/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/Security/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/Task/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/TCPClient/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/VBScriptEngine/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/ThirdParty/TaskToolkit/tags
"set tags+=~/Work/PRODUCT/DEV/Core-RT/UnitTests/tags
if &term =~ '^xterm'
  " solid underscore
  "let &t_SI .= "\<Esc>[5 q"
  " solid block
  "let &t_EI .= "\<Esc>[1 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif
"Custom commands
"Source code for google coding style implementations
nmap <C-K><SPACE> :%s/\s\+$//g<CR>
nmap <C-K><C-G> :%s/\/\/\([^ ]\)/\/\/ \1/g<CR>
nmap <C-K> <C-T> :!updatetags
nmap <C-K><C-B>  :make<CR>
nmap <C-K><C-L> :exec "!C:/Users/JoséLourenço/Lint.bat" substitute(expand('%:p'), 'JoséLourenço', 'JosLou~1', '')
nmap <C-K><C-F> mdggVG=='d
nmap <C-K><C-P> viwpyiw
nmap <C-K><C-S> yi"

map <C-n> :NERDTreeToggle<CR>

"Depending on the OS, change this
set guifont=Monospace\ 13
"set gfn=Lucida_Console:h12:cANSI
let OmniCpp_GlobalScopeSearch = 1
set makeprg=compile\ % 
