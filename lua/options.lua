local opt = vim.opt
local o = vim.o
local g = vim.g

-- OPTIONS
opt.fillchars = {eob = " "} -- Remove tildes from eob
opt.shortmess:append "sI" -- Remove starting message from nvim

o.number = true
o.relativenumber = true
