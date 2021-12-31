local o = vim.opt
local g = vim.go
local w = vim.wo

-- Options
o.expandtab = true
o.smarttab = true
o.shiftwidth = 4
o.tabstop = 4

o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.splitbelow = true
o.splitright = true
o.wrap = false
o.scrolloff = 5
o.sidescrolloff = 10
o.fileencoding = 'utf-8'
o.termguicolors = true

o.number = true
-- o.relativenumber = true
o.cursorline = true

o.hidden = true

o.mouse = 'a'

-- Window options
w.signcolumn = 'yes'

-- Global options
g.clipboard = 'unnamedplus'
