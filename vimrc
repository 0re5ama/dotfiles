"set foldmethod=syntax
set tabstop=2
set shiftwidth=2
"set noexpandtab
set expandtab
set autoindent
set cindent
set number
set relativenumber
set wildmenu
set shellslash
set grepprg=grep\ -nH\ $*

runtime macros/matchit.vim

let g:filetype_pl="prolog"
let g:autofmt_autosave = 1
let NERDTreeShowHidden=1

hi search cterm=NONE ctermbg=grey ctermfg=black

set ls=2
set t_Co=256
"set statusline=%f\ -\ FileType:\ %y
"set statusline+=%l
"set statusline+=/
"set statusline+=%L


"let g:tex_flavor='latex'

"let g:neocomplete#enable_at_startup = 1

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
nnoremap <leader>g :YcmCompleter GoTo<cr>
nnoremap <leader>D :YcmCompleter GetDoc<cr>
nnoremap <F5> :!cargo run<cr>

nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>m :MundoToggle<cr>

"Plugins section
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Insert Plugins here
Plugin 'scrooloose/nerdtree'
Plugin 'jwalton512/vim-blade'
Plugin 'tpope/vim-fugitive'
Plugin 'nikvdp/ejs-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'briancollins/vim-jst'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'simnalamburt/vim-mundo'
Plugin 'tpope/vim-speeddating'
Plugin 'mxw/vim-jsx'
"Plugin 'digitaltoad/vim-pug'
"Plugin 'leafgarland/typescript-vim'
"Plugin 'burnettk/vim-angular'

let g:UltiSnipsSnippetDirectories=['~/.vim/Ultisnips', 'Ultisnips']
let g:UltiSnipsExpandTrigger='<c-space>'
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:UltiSnipsEditSplit="vertical"

call vundle#end()
filetype plugin indent on
au Filetype * set fo-=c fo-=r fo-=o

let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git$|\.hg$|\.svn$|target|node_modules)',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

set rtp+=$HOME/.local/lib/python3.5/site-packages/powerline/bindings/vim/

