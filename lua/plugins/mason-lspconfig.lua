return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "mason.nvim" },
  config = function ()
    require("mason-lspconfig").setup({
      function(server_name)
        local capabilities = require('blink.cmp').get_lsp_capabilities()
        require("lspconfig")[server_name].setup({ capabilities = capabilities })
      end,
    })
  end,
}
