local api = vim.api

vim.cmd [[packadd packer.nvim]]

local packer = require("packer")

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		"williamboman/mason.nvim",
		--"williamboman/mason-lspconfig.nvim",
		--"neovim/nvim-lspconfig",
	}
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
	use 'nvim-treesitter/nvim-treesitter'
	--[[
	use({
        'hrsh7th/nvim-cmp',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lua',
        'lukas-reineke/cmp-rg',
        'hrsh7th/cmp-nvim-lsp-signature-help',
    })
	]]
	use {
		'hrsh7th/vim-vsnip',
		'hrsh7th/vim-vsnip-integ'
	}
	use {
		'jiangmiao/auto-pairs'
	}
	use {
		"akinsho/toggleterm.nvim",
		tag = '*',
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<c-t>]],
				direction = "float"
			})
		end
	}
	use {
		'mhartington/formatter.nvim'
	}
	--use 'mfussenegger/nvim-jdtls'
	use {
		'neoclide/coc.nvim',
		branch = "release"
	}
end)
