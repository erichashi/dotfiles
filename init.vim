	".config/nvim/init.vim
set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4

"Enable mouse click for vim
set mouse=a
"Fix cursor replacement after closing nvim
set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
"set list listchars=tab:>\ ,trail:+,eol:$

"wrap to next line when end of line is reached
set whichwrap+=<,>,[,]


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' "Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' "NerdTree
Plug 'https://github.com/tpope/vim-commentary' "For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' "AirLine
Plug 'https://github.com/ap/vim-css-color' "CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' "Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' "Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' "Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' "CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}  "Auto Completion
Plug 'https://github.com/jiangmiao/auto-pairs' "Auto closing []
Plug 'https://github.com/EdenEast/nightfox.nvim' "Advanced colorscheme

call plug#end()

" Call :PlugInstall to install 
" To delete a plugin, remove the line and call :PlugClean

" Set default colorscheme
:colorscheme duskfox

"Configs for NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" Splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <silent> <C-Left> :vertical resize -3 <CR>
noremap <silent> <C-Right> :vertical resize +3 <CR>
noremap <silent> <C-Up> :resize -3 <CR>
noremap <silent> <C-Down> :resize +3 <CR>

"Normal mode terminal"
tnoremap <Esc> <C-\><C-n><C-w>l

"Tab in COC
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


"Insert mode configs
inoremap <C-n> <Esc>o





