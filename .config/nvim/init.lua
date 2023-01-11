require("plugins")
--require("config.mason")
require("config.nvimtree")
require("config.decay")
--require("config.cmp")
require("config.formatter")

vim.cmd([[
set number
set mouse=v
set tabstop=4
set softtabstop=4
set shiftwidth=4
set clipboard=unnamedplus
]])

vim.cmd([[
nnoremap <silent> <C-f> :Format<CR>

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#confirm() :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
]])
