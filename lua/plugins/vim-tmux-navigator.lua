return {
  "christoomey/vim-tmux-navigator",
  config = function()
    local map = vim.keymap.set

    map("n", "C-h", "<cmd>TmuxNavigateLeft<CR>", { desc = "Go to tmux pane left" })
    map("n", "C-l", "<cmd>TmuxNavigateRight<CR>", { desc = "Go to tmux pane right" })
    map("n", "C-k", "<cmd>TmuxNavigateUp<CR>", { desc = "Go to tmux pane up" })
    map("n", "C-j", "<cmd>TmuxNavigateDown<CR>", { desc = "Go to tmux pane down" })
  end,
}
