
require('bufferline').setup({
    options = {
        hover = {
            enabled = true,
            delay = 50, 
            reveal = { 'close' }
        },
        indicator = {
            style = 'underline'
        },
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true
            }
        }
    },
})

-- mapping keymap
vim.keymap.set('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', { silent = true })
vim.keymap.set('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', { silent = true })
vim.keymap.set('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', { silent = true })
vim.keymap.set('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', { silent = true })
vim.keymap.set('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', { silent = true })
vim.keymap.set('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', { silent = true })

-- navigate keymap
-- vim.keymap.set('n', '<leader>bh', ':BufferLineCyclePrev<CR>', { silent = true })
-- vim.keymap.set('n', '<leader>bl', ':BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set('n', '<C-h>', ':BufferLineCyclePrev<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':BufferLineCycleNext<CR>', { silent = true })
