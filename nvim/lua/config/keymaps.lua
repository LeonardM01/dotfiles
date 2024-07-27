-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- Copilot
--vim.keymap.set('i', '<Tab>', 'copilot#Accept("<CR>")', {
--  expr = true,
--  replace_keycodes = false,
--})
--vim.g.copilot_no_tab_map = true

-- End of line
keymap.set("n", "<S-l>", "$")
keymap.set("n", "<S-h>", "^")

-- Toggle nvim tree
keymap.set("n", "nt", ":NvimTreeToggle<Return>")

-- Select all text
keymap.set("n", "<C-a>", "ggVG")

-- Save
keymap.set("n", "sf", ":w<Return>")

-- Invert j & k
keymap.set("n", "k", "j")
keymap.set("n", "j", "k")

-- Create tabview and split it
keymap.set("n", "ss", ":split<Return><C-w>w")
keymap.set("n", "sv", ":vsplit<Return><C-w>w")

-- Save and quit
keymap.set("n", "qw", ":wq<Return>")
keymap.set("n", "q!", ":q!<Return>")

-- Open file
keymap.set("n", "sp", ":edit ")

-- Move window
keymap.set("", "b<left>", "<C-w>h")
keymap.set("", "b<up>", "<C-w>j")
keymap.set("", "b<down>", "<C-w>k")
keymap.set("", "b<right>", "<C-w>l")

-- Git
keymap.set("n", "mt", ":MergetoolToggle<Return>")

-- Go to end of line
keymap.set("n", "<S-right>", "$")
keymap.set("n", "<S-left>", "^")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w>>")
keymap.set("n", "<C-w><right>", "<C-w><")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Redo
keymap.set("n", "R", ":redo<Return>")

-- Open and close terminal
keymap.set("n", "tr", ":term<Return>")
keymap.set("n", "tx", ":term ++close<Return>")
keymap.set("t", "<Esc>", '<C-\\><C-n><C-w>h",{silent = true}')

-- Show hidden files
keymap.set("n", "sh", ":netrw-a<Return>")
