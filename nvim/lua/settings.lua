vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.backspace = { 'indent', 'eol', 'start' }
vim.opt.clipboard = 'unnamedplus'
vim.opt.diffexpr = ''
vim.opt.expandtab = true
vim.opt.fileformats = { 'unix', 'dos', 'mac' }
vim.opt.foldmethod = 'syntax'
vim.opt.guifont = 'EnvyCodeR Nerd Font:h14'
vim.opt.history = 50
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.keymodel = { 'startsel', 'stopsel' }
vim.opt.laststatus = 2
vim.opt.listchars = { eol = '¶', tab = '» ', trail = '°', extends = '→', precedes = '←', nbsp = '·' }
vim.opt.mouse = 'a'
vim.opt.mousefocus = true
vim.opt.number = true
vim.opt.selection = 'exclusive'
vim.opt.selectmode = 'key'
vim.opt.shiftwidth = 2
vim.opt.showcmd = true
vim.opt.softtabstop = 2
vim.opt.statusline = '%t %r%m%y%=(%l,%v) %p%%'
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.textwidth = 80
vim.opt.tildeop = true
vim.opt.virtualedit = 'block'
vim.opt.whichwrap = 'b,s,<,>,[,]'
vim.opt.window = 63
vim.opt.wrap = true
vim.g.mapleader = ','
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_hide = 0
vim.g.netrw_liststyle = 1

vim.cmd.colorscheme('neopro')
