local api = vim.api

vim.cmd [[packadd packer.nvim]]

local packer = require("packer")

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons'
		}
	}
	use {
		'decaycs/decay.nvim',
		as = 'decay'
	}
end)
