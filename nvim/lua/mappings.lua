--[[
TODO: write the mappings as calls to functions instead of invoking existing keys
]]
-- Make gf open the file in a new tab.
vim.keymap.set('n', 'gf', '<C-w>gF')
-- Introduce a simpler key to jump to tag.
vim.keymap.set('n', 't', 'g<C-]>')
