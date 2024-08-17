return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local format_config = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		}
		conform.setup({
			formatters = {
				black = {
					prepend_args = { "--fast" },
				},
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				javascript = { "prettierd" },
			},
			format_on_save = format_config,
		})

		vim.keymap.set({ "n", "v" }, "<leader>mf", function()
			conform.format(format_config)
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
