local map = vim.keymap.set

-- Navigating vim splits using vi
map('n', '<c-k>', ':wincmd k<CR>') 
map('n', '<c-j>', ':wincmd j<CR>') 
map('n', '<c-h>', ':wincmd h<CR>') 
map('n', '<c-l>', ':wincmd l<CR>') 

map('i', '<C-b>', '<ESC>^i', { desc = 'move beginning of line' })
map('i', '<C-e>', '<End>', { desc = 'move end of line' })
map('i', '<C-h>', '<Left>', { desc = 'move left' })
map('i', '<C-l>', '<Right>', { desc = 'move right' })
map('i', '<C-j>', '<Down>', { desc = 'move down' })
map('i', '<C-k>', '<Up>', { desc = 'move up' })

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<ESC>')

