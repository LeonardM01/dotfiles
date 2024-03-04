local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

vim.api.nvim_create_user_command("NullLsToggle", function()
    null_ls.toggle({})
end, {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format()
end

null_ls.setup {
  sources = {
   -- null_ls.builtins.diagnostics.eslint.with({
   --   diagnostics_format = '[eslint_d] #{m}\n(#{c})'
   -- }),
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.prettier,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          lsp_formatting(bufnr)
        end,
      })
    end
  end
}

vim.api.nvim_create_user_command(
  'DisableLspFormatting',
  function()
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
  end,
  { nargs = 0 }
)
