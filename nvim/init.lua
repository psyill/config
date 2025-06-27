require'settings'
require'plugins'
require'mappings'

vim.cmd([[
syntax enable
highlight Error cterm=bold ctermfg=6 ctermbg=1

autocmd BufRead,BufNewFile *.kt,*.kts setlocal filetype=kotlin
autocmd BufRead,BufNewFile *.h setlocal filetype=cpp
autocmd BufRead,BufNewFile *.log setlocal filetype=logfile
autocmd BufRead,BufNewFile *.qml setlocal filetype=javascript
autocmd FileType logfile setlocal nowrap
autocmd FileType kotlin setlocal shiftwidth=4 softtabstop=4 tabstop=4 textwidth=100
autocmd FileType kotlin setlocal formatoptions+=croqj
autocmd FileType gitcommit setlocal textwidth=72
"autocmd FileType kotlin nnoremap <buffer> <F3> <Cmd>w<cr><Cmd>!ktlint --format %<cr>

" Trailing whitespace is an error.
autocmd Syntax * syn match Error /\s\+$\| \+\ze\t/

" print syntax group under cursor
map <F5> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" alias for introducing missing std:: in front of types from <cstdint>
command CorrectCStdInt :%s/\(\_^\|[^:]\)\zs\ze\<u\?int[0-9]\+_t/std::/gc
]])
vim.api.nvim_create_user_command(
  'Tbn',
  ':tab split <bar> :bn',
  {}
)
