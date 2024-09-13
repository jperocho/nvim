return {
	"xiyaowong/transparent.nvim",
	config = function()
		local transparent = require("transparent")

		transparent.setup({
			extra_groups = {
				"NormalFloat", -- plugins with float panels (e.g., Lazy, Mason, LspInfo)
				"NvimTreeNormal", -- NvimTree
			},
		})
	end,
}
