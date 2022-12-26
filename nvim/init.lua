require('base')
require('highlights')
require('maps')
require('plugins')
vim.opt.shell="wsl.exe -d Ubuntu-20.04"

local has = function(x)
  return vim.fn.has(x) == 1
end

require("nvim-lsp-installer").setup({
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})

local is_win = has "win32"

if(is_win) then
  require('windows')
end
