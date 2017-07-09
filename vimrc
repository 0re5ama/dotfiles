"set foldmethod=syntax
set tabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set cindent
set number
set relativenumber
set wildmenu
set shellslash
set grepprg=grep\ -nH\ $*

let g:filetype_pl="prolog"
let NERDTreeShowHidden=1
let g:neosnippet#disable_runtime_snippets = { "_": 1, }

hi search cterm=NONE ctermbg=grey ctermfg=black

set ls=2
set t_Co=256
"set statusline=%f\ -\ FileType:\ %y
"set statusline+=%l
"set statusline+=/
"set statusline+=%L


let g:tex_flavor='latex'

let g:neocomplete#enable_at_startup = 1

"search settings
set hlsearch
set ignorecase
set smartcase
set incsearch

let mapleader = ","
syntax enable
"set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

if has("gui_running")
    colorscheme torte
endif


"folds za fold open/close toggle
"set fold text to first line
nnoremap <space> za
vnoremap <space> za
function! MyFoldText()
    let line = getline(v:foldstart)
    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')
    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction           
set foldtext=MyFoldText()

function! FoldToggle()
    if(&foldenable ==1)
        set nofoldenable
    else
        set foldenable
    endif
endfunc

nnoremap <leader>f :call FoldToggle()<cr>
"C-n to toggle between relative and numbering
function! NumberToggle()
      if(&relativenumber == 1)
          set norelativenumber
      else         
          set relativenumber    
      endif
endfunc         

nnoremap <leader>n :call NumberToggle()<cr>

"Plugins section
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Insert Plugins here
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'jwalton512/vim-blade'
Plugin 'tpope/vim-fugitive'


call vundle#end()
filetype plugin indent on
au Filetype * set fo-=c fo-=r fo-=o

set rtp+=$HOME/.local/lib/python3.5/site-packages/powerline/bindings/vim/

