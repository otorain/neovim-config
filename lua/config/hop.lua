
require('hop').setup{}

local hop = require('hop')
local directions = require('hop.hint').HintDirection

vim.keymap.set('', '<leader>t', function()
    hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
end, { remap=true })

vim.keymap.set('', '<leader>T', function()
    hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false})
end, { remap = true})

