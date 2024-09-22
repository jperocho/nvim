return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		spec = {
			{ "<leader>t", group = "Tabs" },
			{ "<leader>e", group = "Nvim Tree" },
			{ "<leader>f", group = "Find" },
			{ "<leader>s", group = "Split" },
			{ "<leader>g", group = "Git" },
		},
	},
}
