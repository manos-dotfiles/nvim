local map = vim.keymap.set

-- Nvim Tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- NeoGit
map("n", "<leader>gg","<cmd>Neogit<CR>", { desc = "open neogit"})

-- Telescope
local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Barbar
local opts = { noremap = true, silent = true }
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts, { desc = 'Go to previous buffer' })
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts, { desc = 'Go to next buffer' })
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts, { desc = 'Re-order to previous buffer' })
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts, { desc = 'Re-order to next buffer' })
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts, { desc = 'Go to 1st buffer' })
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts, { desc = 'Go to 2nd buffer' })
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts, { desc = 'Go to 3nd buffer' })
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts, { desc = 'Go to 4th buffer' })
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts, { desc = 'Go to 5th buffer' })
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts, { desc = 'Go to 6th buffer' })
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts, { desc = 'Go to 7th buffer' })
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts, { desc = 'Go to 8th buffer' })
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts, { desc = 'Go to 9th buffer' })
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts, { desc = 'Go to last buffer' })
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts, { desc = 'Pin/unpin buffer' })
map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts, { desc = 'Close buffer' })
