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
  -- cpptools
  use 'mfussenegger/nvim-dap'
  use 'simrat39/rust-tools.nvim'
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
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'hoob3rt/lualine.nvim' -- Status line
  use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v<CurrentMajor>.*",
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
})
  use 'rafamadriz/friendly-snippets'
  use 'saadparwaiz1/cmp_luasnip'
  use 'SirVer/ultisnips' -- snippets
  use 'honza/vim-snippets'
  use 'mlaursen/vim-react-snippets' -- react snippets
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  -- Nvim tree
  use {
   'nvim-tree/nvim-tree.lua',
   requires = {
     'nvim-tree/nvim-web-devicons', -- optional, for file icons
   },
  }
  -- Telescope file browser
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use 'BurntSushi/ripgrep'
  -- Tabs bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'
  -- Lspsaga
  use 'glepnir/lspsaga.nvim'
  -- Prettier
  use 'jose-elias-alvarez/null-ls.nvim' -- Lsp diagnostics and code actions
  -- GitSigns
  use 'lewis6991/gitsigns.nvim'
  -- Git
  use 'dinhhuy258/git.nvim' 
  -- Autotag and lsp
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'nvim-tree/nvim-web-devicons' -- File icons
end)
