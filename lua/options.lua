local opt = vim.opt
local o = vim.o
local g = vim.g

-- OPTIONS
opt.fillchars = {eob = " "} -- Remove tildes from eob
opt.shortmess:append "sI" -- Remove starting message from nvim
opt.clipboard = "unnamedplus"

o.number = true -- Add numbers to lines
o.relativenumber = true -- Relative Line numbers
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4
o.clipboard="unnamedplus"

g.vimtex_view_method = "zathura"

