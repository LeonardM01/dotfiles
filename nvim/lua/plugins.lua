local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]
vim.cmd [[colorscheme spaceduck]]
--  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- colorschemes
  use {
    'pineapplegiant/spaceduck',
    'Mofiqul/dracula.nvim',
    'patstockwell/vim-monokai-tasty',
    'hachy/eva01.vim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  -- Tools
  use 'hoob3rt/lualine.nvim' -- Status line
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'kyazdani42/nvim-web-devicons' -- File icons
end)
