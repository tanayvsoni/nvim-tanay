-- Changes leader key
vim.g.mapleader = " "

-- Opens terminal
vim.api.nvim_set_keymap('n', '<Leader>t', ':ToggleTerm<CR>', { noremap = true, silent = true })

-- Remaps terminal
vim.api.nvim_set_keymap('t', '<Leader>nn', '<C-\\><C-n>', { noremap = true, silent = true })

-- Exit Command
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Change insert line so I stay in normal mode
--vim.api.nvim_set_keymap('n', 'o', 'o<ESC>', { noremap = true, silent = true })

-- Remap Window Navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

vim.api.nvim_set_keymap('n', '<C-Left>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Down>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Up>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-Right>', '<C-w>l', { noremap = true })

-- Remap Quit
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })


