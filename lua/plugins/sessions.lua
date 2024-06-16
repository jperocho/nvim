return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      auto_session_suppress_dirs = {
        "~/",
        "~/Projects",
        "~/Downloads",
        "~/Desktop",
        "~/Documents",
        "~/Pictures",
        "~/Videos",
        "~/Music",
        "/tmp",
      },
      session_lens = {
        buftypes_to_ignore = {},
        load_on_startup = true,
        theme_conf = { border = true },
        previewer = true,
      },
      vim.keymap.set("n", "<leader>ls", require("auto-session.session-lens").search_session, { noremap = true }),
    })
  end,
}
