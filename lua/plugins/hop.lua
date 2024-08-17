return {
  "smoka7/hop.nvim",
  config = function()
    local hop = require("hop")
    hop.setup({
      multi_windows = true,
      keys = "htnsueaidgcrlypmbkjvx",
    })
    vim.keymap.set("n", "<leader>h", "<cmd>HopWord<CR>", { desc = "Hop and navigate anywhere to screen" })
  end,
}
