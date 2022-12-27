local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

local colorscheme = "spaceduck"

if (colorscheme == "dracula") then
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) 
end

vim.cmd [[packadd packer.nvim]]
vim.api.nvim_command("colorscheme " .. colorscheme)

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
  -- Telescope file browser
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'BurntSushi/ripgrep'
  -- Tabs bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'
  -- Lspsaga
  use 'glepnir/lspsaga.nvim'
  -- Prettier
  use 'jose-elias-alvarez/null-ls.nvim' -- Lsp diagnostics and code actions
  use 'MunifTanjim/eslint.nvim'
  -- GitSigns
  use 'lewis6991/gitsigns.nvim'
  -- Autotag and lsp
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'nvim-tree/nvim-web-devicons' -- File icons
end)
