local lspconfig = require('lspconfig')
local on_attach = require('lsp.on_attach')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.bashls.setup({
  capabilities = capabilities,
  on_attach = on_attach
})


