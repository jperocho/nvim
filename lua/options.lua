local cmd = vim.cmd
local opt = vim.opt
local o = vim.o

cmd("let g:netrw_liststyle = 3")

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Cursor
opt.cursorline = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Default Indenting
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.softtabstop = 2

-- Shows tab and space characters
o.list = true
local space = "·"
opt.listchars:append({
  tab = "│ ",
  multispace = space,
  lead = space,
  trail = space,
  nbsp = space,
})

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append("<>[]hl")
