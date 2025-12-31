--[[
Nvim autopairs plugin for bracket
parenthesis and square bracket autocompletion
--]]

return {
    'windwp/nvim-autopairs',
    enable = false,
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup({})
    end,
}
