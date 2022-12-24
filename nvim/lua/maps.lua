local keymap = vim.keymap

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
keymap.set('', 'b<down>', '<C-w>')
keymap.set('', 'b<right>', '<C-w>l')

-- Comment out a line

-- Search in file
keymap.set('n', '<C-f>', '/')

-- Go to end of line
keymap.set('n', '<S-right>', '$')
keymap.set('n', '<S-left>', '0')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w>>')
keymap.set('n', '<C-w><right>', '<C-w><')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Undo
keymap.set('n', '<C-z>', 'U')

-- Switch tab
keymap.set('n', '<Space><left>', 'gT')
keymap.set('n', '<Space><right>', 'gt')
keymap.set('n', '<Tab>1', ':tabn 1<Return>')
keymap.set('n', '<Tab>2', ':tabn 2<Return>')
keymap.set('n', '<Tab>3', ':tabn 3<Return>')
keymap.set('n', '<Tab>4', ':tabn 4<Return>')
keymap.set('n', '<Tab>5', ':tabn 5<Return>')
keymap.set('n', '<Tab>5', ':tabn 5<Return>')
keymap.set('n', '<Tab>6', ':tabn 6<Return>')

-- Open and close terminal
keymap.set('n', '<C-Return>', ':term<Return>')
keymap.set('n', '<C-Return>x', ':term ++close<Return>')

-- Explore Tree
keymap.set('n', 'ex', ':Explore<Return>')

-- Show hidden files
keymap.set('n', 'sh', ':netrw-a<Return>')
