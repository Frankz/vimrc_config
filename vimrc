"echom >^.^<
set encoding=utf-8 "Encoding en UTF-8
set number " Mostrar los numeros de línea
set backspace=indent,eol,start
set nowrap

" para evitar auto-indent al pegar
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

syntax on " Resaltar sintaxis
autocmd Filetype tex setl updatetime=1

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


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
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
" plugin on GitHub repo,colorscheme
"Plugin 'sjl/badwolf'
" plugin on GitHub repo,colorscheme
Plugin 'flazz/vim-colorschemes'
"Plufin on GitHub
Plugin 'wincent/command-t'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
"Plufin on GitHub
Plugin 'vim-scripts/tinykeymap'
"Plufin on GitHub
Plugin 'Valloric/MatchTagAlways'
"Plugin on GitHub for compile latex files for pdf
Plugin 'lervag/vimtex'
"Plugin on GitHub for preview latext files in pdf viewer
Plugin 'xuhdev/vim-latex-live-preview'
" Plugin on GitHub for preview Markdown files in web browser
Plugin 'JamshedVesuna/vim-markdown-preview'
" Plugin for write tables in markdown
" Plugin 'dhruvasagar/vim-table-mode'
" Quick refactoring, para que sea como sublimetext
" https://github.com/terryma/vim-multiple-cursors
" taglist, for navigation panel
Plugin 'vim-scripts/taglist.vim'


" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" Instalando MarkdownFootnotes, instalado previamento con el comando
" 'PluginSearch'
" Plugin 'MarkdownFootnotes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" AGREGADO POR MI...
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

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
"
" Mapping for quit autoindent
" Es como poner en vimrc en el archivo trabajo actualmente
" setlocal noautoindent
" setlocal nocindent
" setlocal nosmartindent
" setlocal indentexprI
nnoremap <F8> :setl noai nocin nosi inde=<CR>
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Para resizear el tamañan de la fuenta y las divisiones
" nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
"nnoremap <silent> <Leader>+ :exe "resize +1 "<CR>
"nnoremap <silent> <Leader>+ :exe "resize -1 "<CR>
"
" Add full file path to your existing statusline
set laststatus=2
set statusline=%f%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" Config MarkdownPreview Plugin
"let vim_markdown_preview_toggle=2
"let vim_markdown_preview_browser='chromium'

" Tab navigation like Firefox.
" http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_2)
"inoremap <C-S-tab> <Esc>:tabprevious<CR>i
"inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-c> :tabclose<CR>
nnoremap <C-z> :wq!<CR>
nnoremap <C-f> :TlistToggle<CR>

"inoremap <C-PageUp> <Esc>:tabprevious<CR>i
"inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>


set t_Co=256
" Theme of SublimeText2
"colorscheme Monokai
"colorscheme visualstudio
colorscheme solarized
"colorscheme solarized_light
"colorscheme CandyPaper 
" colorscheme Tomorrow-Night

