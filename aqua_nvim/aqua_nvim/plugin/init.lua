require('telescope').setup()
require("nvim-treesitter").setup()
require('markdown').setup()
require("nvim-devdocs").setup()
require('Comment').setup()
require("startup").setup({theme = "dashboard"})
require("toggleterm").setup{
	shade_terminals = true,
	float_opts = {
		border = 'curved',
		height = 5,

	}
}

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
	cmd = "lazygit",
	direction = "float",
	float_opts = {
		border = 'double',
		height = 40
	},
	hidden = true,
})
function _lazygit()
  lazygit:toggle()
end

local config = {
   keys = {
      ["("] = { escape = false, close = true, pair = "()" },
      ["["] = { escape = false, close = true, pair = "[]" },
      ["{"] = { escape = false, close = true, pair = "{}" },

      [">"] = { escape = true, close = false, pair = "<>" },
      [")"] = { escape = true, close = false, pair = "()" },
      ["]"] = { escape = true, close = false, pair = "[]" },
      ["}"] = { escape = true, close = false, pair = "{}" },

      ['"'] = { escape = true, close = true, pair = '""' },
      ["'"] = { escape = true, close = true, pair = "''" },
      ["`"] = { escape = true, close = true, pair = "``" },
   },
   options = {
      disabled_filetypes = { "text" },
      disable_when_touch = false,
      touch_regex = "[%w(%[{]",
      pair_spaces = false,
      auto_indent = true,
   },
}
require("autoclose").setup(config)
