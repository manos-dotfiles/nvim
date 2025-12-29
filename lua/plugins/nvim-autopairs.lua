--[[
Nvim autopairs plugin for bracket
parenthesis and square bracket autocompletion
--]]

return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({})
  end,
}
