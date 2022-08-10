if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif


call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

if has("nvim")
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Or build from source code by using yarn: https://yarnpkg.com
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

    Plug 'keith/swift.vim' " syntax highlighting
    Plug 'alvan/vim-closetag'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'tami5/swift.nvim'
    Plug 'windwp/nvim-autopairs'
    Plug 'alvan/vim-closetag'
    Plug 'craigemery/vim-autotag'
    Plug 'neovim/nvim-lspconfig'
    Plug 'tami5/lspsaga.nvim'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'yuezk/vim-js'
    Plug 'onsails/lspkind-nvim'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kristijanhusak/defx-git'
    Plug 'kristijanhusak/defx-icons'
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'acro5piano/vim-jsx-replace-tag'
    Plug 'creativenull/diagnosticls-configs-nvim'
    "/hrsh7th/nvim-cmp"
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/vim-vsnip'

endif

call plug#end()

