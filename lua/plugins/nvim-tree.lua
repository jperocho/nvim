return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvim_tree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvim_tree.setup({
      view = {
        width = 35,
	relativenumber = true,
      },
      renderer = {
	indent_markers = {
          enable = true,
	},
      },
      actions = {
	open_file = {
	  window_picker = {
	    enable = false,
	  },
	},
      },
    })

    local map = vim.keymap.set

    map("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Nvim Tree" })
    map("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Find File Toggle Nvim Tree" })
    map("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse Nvim Tree" })
    map("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh Nvim Tree" })

  end,
}
