set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
packadd minpac
call minpac#init()
call minpac#add('luochen1990/rainbow')
call minpac#add('Tsuzat/NeoSolarized.nvim')
call minpac#add('k-takata/minpac', { 'type': 'opt' })
call minpac#add('junegunn/fzf')
call minpac#add('tpope/vim-dispatch')
call minpac#add('radenling/vim-dispatch-neovim')
call minpac#add('leafgarland/typescript-vim')
call minpac#add('tpope/vim-fugitive')
call minpac#add('pangloss/vim-javascript')
call minpac#add('mxw/vim-jsx')
call minpac#add('jparise/vim-graphql')
call minpac#add('w0rp/ale')
call minpac#add('neoclide/coc.nvim')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('tpope/vim-surround')
call minpac#add('itchyny/lightline.vim')

colorscheme NeoSolarized
set number
set relativenumber
set ruler
set autoindent
set cindent
set smartindent
set ignorecase
set smartcase

let g:rainbow_active = 1
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint'], 'javascriptreact': ['prettier', 'eslint'], 'typescriptreact': ['prettier', 'eslint']  }
let g:ale_fix_on_save = 1
let g:coc_global_extensions = ['coc-tsserver', 'coc-json']
nnoremap <C-p> :<C-u>FZF<CR>

if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh();
else
	inoremap <silent><expr> <c-@> coc#refresh();
endif

set signcolumn=yes

set updatetime=1000

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-reference)
nmap <leader>rn <plug>(coc-rename)

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'relativepath', 'modified' ] ]
      \ }
      \ }
