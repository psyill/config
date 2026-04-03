local change_font_size = function(mutate_size)
  local current_font = vim.api.nvim_get_option_value('guifont', {})
  local new_font = string.gsub(current_font, ':h(%d+)', function(size)
    return ':h' .. mutate_size(tonumber(size))
  end, 1)
  vim.api.nvim_set_option_value('guifont', new_font, { scope='local' })
end
local inc_font_size = function()
  change_font_size(function(size)
    return size + 1
  end)
end
local dec_font_size = function()
  change_font_size(function(size)
    if size >= 2 then
      return size - 1
    end
    return size
  end)
end

vim.keymap.set('n', '++', inc_font_size)
vim.keymap.set('n', '--', dec_font_size)

--[[
TODO: write the mappings as calls to functions instead of invoking existing keys
]]

-- Make gf open the file in a new tab.
vim.keymap.set('n', 'gf', '<C-w>gF')
-- Introduce a simpler key to jump to tag.
vim.keymap.set('n', 't', 'g<C-]>')
