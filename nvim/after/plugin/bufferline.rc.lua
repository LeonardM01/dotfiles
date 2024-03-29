local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    always_show_bufferline = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    numbers = "ordinal",
    persist_buffer_sort = true,
    enforce_regular_tabs = true,
    offsets = {
      {
        filetype = "NvimTree",
        text="File Explorer",
        separator= true,
        text_align = "center"
      },
    },
   color_icons = true,  
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and " "
          or (e == "warning" and " " or "" )
          s = s .. n .. sym
        end
        return s
      end  
    },
})

vim.keymap.set('n', '<Space><right>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<Space><left>', '<Cmd>BufferLineCyclePrev<CR>', {})
