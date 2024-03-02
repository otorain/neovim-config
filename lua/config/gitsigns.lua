
require('gitsigns').setup()

local gitsigns = require('gitsigns')

vim.keymap.set('n', '<leader>tb', ':Gitsigns toggle_current_line_blame<CR>', { silent = true })
