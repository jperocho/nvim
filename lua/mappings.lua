vim.g.mapleader = " "
local map = vim.keymap.set

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Navigate through splits
map("n", "<c-k>", ":wincmd k<CR>", { desc = "Move up of the split" })
map("n", "<c-j>", ":wincmd j<CR>", { desc = "Move down of the split" })
map("n", "<c-h>", ":wincmd h<CR>", { desc = "Move left of the split" })
map("n", "<c-l>", ":wincmd l<CR>", { desc = "Move right of the split" })

-- Navigate in insert-mode
map("i", "<c-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<c-e>", "<End>", { desc = "move end of line" })
map("i", "<c-h>", "<Left>", { desc = "move left" })
map("i", "<c-l>", "<Right>", { desc = "move right" })
map("i", "<c-j>", "<Down>", { desc = "move down" })
map("i", "<c-k>", "<Up>", { desc = "move up" })

map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear highlights" })

map("n", "<leader>sv", "<C-w>v", { desc = "Split vertical" })
map("n", "<leader>sh", "<C-w>s", { desc = "Split horizontal" })
map("n", "<leader>se", "<C-w>=", { desc = "Split equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" })

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" })
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next tab" })
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Previous tab" })
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Current buffer to new tab" })

-- Indent keys
map("n", "<Tab>", ">>", { desc = "Indent", noremap = true, silent = true })
map("n", "<S-Tab>", "<<", { desc = "Reverse Indent", noremap = true, silent = true })
map("v", "<Tab>", ">gv", { desc = "Indent", noremap = true, silent = true })
map("v", "<S-Tab>", "<gv", { desc = "Reverse Indent", noremap = true, silent = true })

map("n", "<c-A-b>", "<cmd>AvanteToggle<CR>", { desc = "Avante Toggle", noremap = true, silent = true })
