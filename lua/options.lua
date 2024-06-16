vim.o.laststatus = 3
vim.o.showmode = false

vim.o.clipboard = "unnamedplus"
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

-- Shows tab and space characters
vim.o.list = true
local space = "·"
vim.opt.listchars:append({
  tab = "│─",
  multispace = space,
  lead = space,
  trail = space,
  nbsp = space,
})

-- Default Indenting
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2

vim.opt.fillchars = { eob = " " }
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = "a"

-- Numbers
vim.o.number = true
vim.o.numberwidth = 2
vim.o.ruler = false

-- disable nvim intro
vim.opt.shortmess:append("sI")

vim.o.signcolumn = "yes"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.timeoutlen = 400
vim.o.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
vim.o.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append("<>[]hl")

vim.g.mapleader = " "
