return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        defaults = {
	  path_display = { "smart" },
          file_ignore_patterns = { "node_modules", ".git" },
	  mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
	    }
	  }
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      telescope.load_extension("fzf")
      telescope.load_extension("ui-select")
      
      local builtin = require("telescope.builtin")
      local map = vim.keymap.set

      map("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
      map("n", "<leader>fr", builtin.oldfiles, { desc = "Find Recent Files" })
      map("n", "<leader>fs", builtin.live_grep, { desc = "Live Grep" })
      map("n", "<leader>fc", builtin.grep_string, { desc = "Find Grep String" })
    end,
  },
}
