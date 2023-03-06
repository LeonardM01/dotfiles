local keymap = vim.keymap

-- End of line
keymap.set('n', '<S-l>', '$')
keymap.set('n', '<S-h>', '^')

-- Create new coding session
function createNewSession()
  vim.cmd[[:NvimTreeToggle]]
  vim.cmd[[:tabedit]]
  vim.cmd[[:term]]
end
keymap.set('n', '<Space>s', createNewSession)

-- Toggle nvim tree
keymap.set('n', 'nt', ':NvimTreeToggle<Return>')

-- Select all text
keymap.set('n', '<C-a>', 'ggVG')

-- Save
keymap.set('n', 'sf', ':w<Return>')

-- Invert j & k
keymap.set('n', 'k', 'j')
keymap.set('n', 'j', 'k')

-- Create tabview and split it
keymap.set('n', 'te', ':tabedit<Return>')
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Save and quit
keymap.set('n', 'qw', ':wq<Return>')
keymap.set('n', 'q!', ':q!<Return>')

-- Open file 
keymap.set('n', 'sp', ':edit ')

-- Move window
keymap.set('', 'b<left>', '<C-w>h')
keymap.set('', 'b<up>', '<C-w>k')
keymap.set('', 'b<down>', '<C-w>j')
keymap.set('', 'b<right>', '<C-w>l')


-- Go to end of line
keymap.set('n', '<S-right>', '$')
keymap.set('n', '<S-left>', '^')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w>>')
keymap.set('n', '<C-w><right>', '<C-w><')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Undo
keymap.set('n', '<C-z>', 'U')

-- Switch tab
keymap.set('n', '<Tab>1', ':tabn 1<Return>')
keymap.set('n', '<Tab>2', ':tabn 2<Return>')
keymap.set('n', '<Tab>3', ':tabn 3<Return>')
keymap.set('n', '<Tab>4', ':tabn 4<Return>')
keymap.set('n', '<Tab>5', ':tabn 5<Return>')
keymap.set('n', '<Tab>5', ':tabn 5<Return>')
keymap.set('n', '<Tab>6', ':tabn 6<Return>')

-- Open and close terminal
keymap.set('n', 'tr', ':term<Return>')
keymap.set('n', 'tx', ':term ++close<Return>')
keymap.set('t', '<Esc>', '<C-\\><C-n><C-w>h",{silent = true}')

-- Show hidden files
keymap.set('n', 'sh', ':netrw-a<Return>')

-- Replace word
keymap.set('n', '<Space>w', ':% s/')
