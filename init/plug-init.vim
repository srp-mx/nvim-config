call plug#begin("~/.config/nvim/.plugged")
    " plugins!!
    " requires having vim-plug installed!
    " run with :PlugInstall, update with :PlugUpdate
    Plug 'nvim-lua/plenary.nvim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-dispatch'
    Plug 'Shougo/vimproc.vim', {'do' : 'make'}
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " don't forget to :CocInstall whatever you need
    Plug 'ThePrimeagen/harpoon'
    " Plug 'dense-analysis/ale'
    Plug 'nvim-neorg/neorg'
    Plug 'nvim-orgmode/orgmode'
    Plug 'jupyter-vim/jupyter-vim'
    Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
    "Plug 'vijaymarupudi/nvim-fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'tikhomirov/vim-glsl'
    Plug 'timtro/glslView-nvim'
    Plug 'habamax/vim-godot'
call plug#end()
