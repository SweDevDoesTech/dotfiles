local util = require "formatter.util"
local home = os.getenv("HOME")


require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
	java = {
		function ()
			return {
				exe = "java",
				args = { "-jar", home .. "/.config/nvim/formatter/google-java-format-1.15.0.jar", "-"},
				stdin = true,
			}
		end
	},

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
