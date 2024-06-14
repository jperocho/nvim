return {
  "smoka7/hop.nvim",
  config = function()
    local hop = require("hop")
    hop.setup({
      multi_windows = true,
      keys = "htnsueaidgcrlypmbkjvx",
    })
    vim.keymap.set("n", "<leader>fj", ":HopWord<CR>")
  end,
}
