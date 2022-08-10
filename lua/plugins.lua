local status, packer = pcall(require, 'packer')


if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]
packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'L3MON4D3/LuaSnip' -- LuaSnip cmp
  use 'hoob3rt/lualine.nvim' -- StatusLine
  use 'neovim/nvim-lspconfig' -- LSP
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 's1n7ax/nvim-terminal' -- Terminal Neovim

  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- Completion
  use 'hrsh7th/nvim-cmp' -- LSP

  use 'lewis6991/gitsigns.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'


  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'kyazdani42/nvim-web-devicons' --File Icons

  use 'akinsho/nvim-bufferline.lua' -- Tab line
  use 'norcalli/nvim-colorizer.lua'
  use 'glepnir/lspsaga.nvim' -- LSP UIS
end)
