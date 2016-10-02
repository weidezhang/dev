execute pathogen#infect()
filetype plugin indent on
syntax on 
highlight comment ctermfg=lightblue
highlight constant ctermfg=red
set hlsearch
"set smartindent 
set tabstop=4 
set shiftwidth=4
"set expandtab 
set nu
set ignorecase 

autocmd FileType c,cpp,h,hpp,java,objc,perl setlocal smartindent tabstop=4 shiftwidth=4 expandtab softtabstop=4
"set softtabstop=4 
"set expandtab
autocmd FileType java setlocal smartindent
"auto cpp and h switch using a.vim plugin 
"the following maps F2 to :AV and enter 
nnoremap aa :A<cr>  
nnoremap av :AV<cr>

"show the list of files in current folder 
map <S-c> :!ls<CR>:e


"http://superuser.com/questions/235117/vim-copy-paste-across-terminals
set clipboard=unnamed

"apply tab to visually selected section 
vmap <Tab> >gv
vmap <S-Tab> <gv

"auto switch vim buffer
map gg :bn<cr>
map ff :bp<cr>
map gd :bd<cr> 

"set vim buffer issue when exiting from vim 
set t_ti= t_te=  

"delete word after cursor 
"map wdd diw

filetype plugin on 
"Alternative use the following to also enable language-specific indenting. 
filetype plugin indent on 

set backspace=2 " make backspace work like most other apps

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

let g:SuperTabDefaultCompletionType = 'context'

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent<C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent<C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

set completeopt-=preview
let g:SuperTabClosePreviewOnPopupClose = 1
set tags+=/home/w/dev/code/perception_release/perception/tags
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" " automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview"


let g:SuperTabDefaultCompletionType="context"
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

let g:mapleader='-'
let g:ctrlp_map='ll'
nnoremap ss :CtrlPTag<cr>
nnoremap jj <c-]><cr>
nnoremap bb <c-t><cr>
nnoremap tt :tabe<cr>
nnoremap tc :tabc<cr>
nnoremap qq :q<cr>
let g:ctrlp_working_path_mode = 'ra'
"clang complete configs, only useful for clang compiled projects 
"let g:clang_library_path='/usr/lib/llvm-3.8/lib'
"let g:clang_library_path='/usr/lib/x86_64-linux-gnu/libclang-3.8.so.1'
"let g:nerdtree_tabs_open_on_console_startup=1
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp, set omnifunc=omni#cpp#complete#Main
nnoremap wo :Wipeout<cr>
