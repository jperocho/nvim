return {
  "christoomey/vim-tmux-navigator",
  config = function()
    local map = vim.keymap.set

    map("n", "C-h", ":TmuxNavigateLeft<CR>")
    map("n", "C-l", ":TmuxNavigateRight<CR>")
    map("n", "C-k", ":TmuxNavigateUp<CR>")
    map("n", "C-j", ":TmuxNavigateDown<CR>")
  end,
}
