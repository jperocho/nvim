return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local neo_tree = require("neo-tree")
    neo_tree.setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = {
            ".git",
            ".DS_Store",
            "thumbs.db",
            ".vscode",
          },
        },
      },
    })
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { desc = "Toggles Neotree" })
  end,
}
