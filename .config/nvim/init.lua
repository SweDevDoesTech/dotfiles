vim.cmd([[
set number
set mouse=v
set tabstop=4
set softtabstop=4
set shiftwidth=4
set clipboard=unnamedplus

colorscheme decay
]])

require("plugins")

require("config.nvimtree")
