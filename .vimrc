" Vundle init
set nocompatible  " be iMproved, required
filetype off  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
" Navegador para os buffers abertos
Bundle 'vim-scripts/bufexplorer.zip'

" Melhora os temas para terminais
Bundle 'godlygeek/csapprox'

" Exibe os espaços em branch no final de linhas
Bundle 'bronson/vim-trailing-whitespace'

" Emmet vim
Bundle 'mattn/emmet-vim'

" ruby
Bundle 'vim-ruby/vim-ruby', {'v': 'c4d3ca9'}

" NerdTree: Navegador de arquivos e diretórios
Bundle 'scrooloose/nerdtree'
map ,t <ESC>:NERDTreeToggle<CR>
map ,T <ESC>:NERDTreeFind<CR>
let NERDTreeHighlightCursorline=1       " Destaca a linha atual
let NERDTreeShowHidden=1                " Lista arquivos ocultos
let NERDTreeShowLineNumbers=0
let NERDTreeQuitOnOpen=0
let NERDTreeIgnore=['\.*swp$', '\.*pyc$', '^\.hg$']  " Arquivos que não serão exibidos.

" TagList: Lista de classes e métodos em um arquivo
Bundle 'vim-scripts/taglist.vim'
nnoremap ,l :TlistToggle<CR>
let Tlist_Use_Right_Window=1            " Lista de tags à direita
let Tlist_GainFocus_On_ToggleOpen=1     " Ganhar foco
let Tlist_File_Fold_Auto_Close=1        " Não exibe tags de buffers inativos
let Tlist_Sort_Type="name"              " Ordenar pelo nome e não pela ordem no arquivo
let Tlist_Close_On_Select=1             " Fecha a taglist após selecionar uma tag

" CtrlP: Pesquisa arquivos e diretórios
Bundle 'kien/ctrlp.vim'
nnoremap ,f :CtrlP<CR>
let g:ctrlp_working_path_mode='' "Pesquisa a partir do diretório atual no Vim.

" Syntastic: Verifica sintaxe e exibe erros
Bundle 'scrooloose/syntastic'
let g:syntastic_ruby_exec='ruby1.9.1'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"My Settings

" Persistent undo
if has('persistent_undo')
    set undodir=~/.vim/undo  " Diretório de gravação do undo
    set undofile        " desfazer persistente
    set undolevels=1000         " número de alterações para desfazer
    set undoreload=10000        " número de linhas do undo no reload de um buffer
endif

syntax enable       " Habilita a marcação de sintaxe

set nobackup
set noswapfile      " Eu não uso os arquivos de swap e backup...

set encoding=utf-8

set showmode        " Exibe o modo atual
set wildmenu        " Menu com as opções do vim usando tab
set ruler           " Mostra a posição do cursor
set cursorline      " Destaca a linha atual
set laststatus=2    " Sempre exibe a barra de status
set clipboard=unnamedplus   " Copia do vim para o clipboard
set mouse=a

set autoread        " Recarrega arquivos alterados em disco automaticamente

"set tw=80           " Define a largura do texto como 80 caracteres
set colorcolumn=81  " Deixa a coluna 80 colorida
set incsearch       " Pesquisa incremental
set hlsearch        " Highligth search :)
set ignorecase      " Pesquisa ignora caixa alta e baixa
set smartcase       " Pesquisa considera caixa alta apenas se ouver uma ou mais maiúsculas na pesquisa

set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing
set textwidth=0
set wrapmargin=0

" set exrc            " enable per-directory .vimrc files
" set secure          " disable unsafe commands in local .vimrc files

"Tab configs
set expandtab " tabs are spaces
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set number " show line numbers

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

colorscheme monokai
