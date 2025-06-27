require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'equalsraf/neovim-gui-shim' -- Support for Neovim-Qt GUI features.

  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

  -- The nvim-cmp autocompleter, with some sources.
  use 'hrsh7th/cmp-nvim-lsp' -- Neovim's LSP as a source.
  use 'hrsh7th/cmp-buffer' -- Searches the current buffer.
  use 'hrsh7th/cmp-path' -- File paths as sources.
  use 'hrsh7th/nvim-cmp' -- Nvim-Cmp autocompleter
end)

-- Configure the nvim-cmp autocompleter.
local cmp = require('cmp')
cmp.setup {
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-j>'] = cmp.mapping.scroll_docs(1),
    ['<C-k>'] = cmp.mapping.scroll_docs(-1),
    ['<cr>'] = cmp.mapping.confirm(),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }
}

-- Carries out an action on the current buffer in a new tab.
local in_new_tab = function(action)
  return function(...)
    local original_buffer = vim.api.nvim_get_current_buf()
    local pos = vim.api.nvim_win_get_cursor(0)
    vim.api.nvim_command('tabnew')
    local empty_buffer = vim.api.nvim_get_current_buf()
    vim.api.nvim_set_current_buf(original_buffer)
    vim.api.nvim_buf_delete(empty_buffer, { force=true })
    vim.api.nvim_win_set_cursor(0, pos)
    action(...)
  end
end

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable inlay hints if available.
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true, { bufnr=bufnr })
  end
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '<F1>', function()
    vim.lsp.buf.hover({ border = "rounded" })
  end, bufopts)
  vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<F3>', vim.lsp.buf.format, bufopts)
  vim.keymap.set('n', '<leader><F1>', function()
    vim.diagnostic.open_float({ border = "rounded" })
  end, bufopts)
  vim.keymap.set('n', '<leader>D', in_new_tab(vim.lsp.buf.declaration), bufopts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', '<leader>d', in_new_tab(vim.lsp.buf.definition), bufopts)
  vim.keymap.set('n', '<leader>i', in_new_tab(vim.lsp.buf.implementation), bufopts)
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>td', in_new_tab(vim.lsp.buf.type_definition), bufopts)
end

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')
lspconfig.clangd.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
lspconfig.kotlin_language_server.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
lspconfig.pylsp.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    pylsp = {
      plugins = {
        black = {
          enabled = true,
        }
      }
    }
  }
}
lspconfig.jedi_language_server.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
lspconfig.rust_analyzer.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    ['rust-analyzer'] = {
      check = {
        -- Run `cargo clippy` instead of `cargo check`.
        command = 'clippy',
        extra_args = {
          '--',
          '--no-deps',
          '--warn', 'clippy::pedantic',
        },
      },
    },
  },
}
lspconfig.zls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
