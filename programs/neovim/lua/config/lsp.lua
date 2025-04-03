-- Lspconfig
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      check = {
        command = "clippy",
      },
    },
  },
})


-- Lspsaga
require("lspsaga").setup({
  ui = {
    border = "rounded",
    winblend = 0,
    expand = "",
    collapse = "",
    preview = "",
    code_action = "",
  },
})
