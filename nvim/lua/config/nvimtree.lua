local map = require("utils").map

require("nvim-tree").setup({
	view = {
		adaptive_size = true,
		width = 40,
	}
})

map("n", "<C-b>", ":NvimTreeToggle<CR>", { silent = true})
