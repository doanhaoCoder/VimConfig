" General settings
set mouse=a                 " Enable mouse in all modes
set number                  " Show line numbers
set ignorecase              " Enable case-insensitive search
set foldmethod=syntax       " Use syntax-based folding

" Resize panes with Alt + Arrow Keys
nmap <M-Right> :vertical resize +1<CR>    
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Plugin Manager Setup using vim-plug
call plug#begin('~/plugged')  " Change directory if you prefer

" List of plugins

" General utility plugins
Plug 'tpope/vim-sensible'

" Theme: OneDark
Plug 'navarasu/onedark.nvim'

" File browser with Git integration
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'              
Plug 'ryanoasis/vim-devicons'                   
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" File search with fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'

" Floating terminal
Plug 'voldikss/vim-floaterm'

" Code intelligence and auto-completion
Plug 'neoclide/coc.nvim', 
\ {'branch': 'release'}                     " Language server protocol (LSP) 
Plug 'jiangmiao/auto-pairs'                   " Auto pair parentheses 
Plug 'mattn/emmet-vim' 
Plug 'preservim/nerdcommenter'                " Commenting code 
Plug 'alvan/vim-closetag'                     " Auto close HTML/XML tags 

" Code syntax highlighting for multiple languages
Plug 'sheerun/vim-polyglot'

" Debugging (optional)
" Plug 'puremourning/vimspector'             " Vimspector for debugging

" Source code version control
Plug 'tpope/vim-fugitive'                     " Git integration
Plug 'tpope/vim-rhubarb'                     " GitHub integration
Plug 'airblade/vim-gitgutter'                " Git changes in the gutter
Plug 'samoshkin/vim-mergetool'               " Git merge tool

" Python-specific folding
Plug 'tmhedberg/SimpylFold'

call plug#end()

" Source additional settings from .vim files
if has('nvim')
    for setting_file in split(glob(stdpath('config').'/settings/*.vim'), '\n')
      execute 'source' setting_file
    endfor
  else
    " Đường dẫn thay thế cho Vim
    for setting_file in split(glob('~/.vim/settings/*.vim'), '\n')
      execute 'source' setting_file
    endfor
  endif
  
