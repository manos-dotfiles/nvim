local opt = vim.opt
local o = vim.o
local g = vim.g

-- OPTIONS
opt.fillchars = {eob = " "} -- Remove tildes from eob
opt.shortmess:append "sI" -- Remove starting message from nvim

o.number = true -- Add numbers to lines
o.relativenumber = true -- Relative Line numbers
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.clipboard="unnamedplus"
