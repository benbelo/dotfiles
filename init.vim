" NVIM CONFIG FILE

" Options
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

" Syntax
filetype plugin indent on
syntax on

" Color support
set t_Co=256

" Plugins
call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    " Color
    call plug#begin()
   	 Plug 'morhetz/gruvbox'
    call plug#end()

    " Utilities
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
    Plug 'plasticboy/vim-markdown'

    " Search : fzf native plugin
    Plug 'junegunn/fzf'
    " Search : fzf.vim
    Plug 'junegunn/fzf.vim'

    " Git
    Plug 'airblade/vim-gitgutter'

    " Search
    Plug 'junegunn/fzf.vim'
call plug#end()

" Keybinds
" CTRL + N : Toggle NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" CTRL + B : Open a terminal
nnoremap <C-b> :sp<CR>:terminal<CR>
" SHIFT + TAB : Previous tab
nnoremap <S-Tab> gT
" SHIFT + T : Create a tab
nnoremap <Tab> gt
" TAB : Next open tab
nnoremap <silent> <S-t> :tabnew<CR>

" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']
