
-- disable netrw

vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

-- set terguicolors to enable highlight groups
-- vim.opt.termguicolors = true

vim.keymap.set('n', '<A-m>', ':NvimTreeToggle<CR>', { silent = true })
vim.keymap.set('n', '<A-j>', ':NvimTreeFindFile<CR>', { silent = true })


-- pass to setup along with your other options
require("nvim-tree").setup({
    view = {
        width = 40
    },
    update_focused_file = {
        enable = true,
        update_cwd = true
    }
})

