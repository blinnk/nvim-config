USER = vim.fn.expand('$USER')
local lspconfig = require('lspconfig')
local on_attach = require('lsp.on_attach')

-- local zeta_root = ""
local zeta_bin = ""

if vim.fn.has("unix") == 1 then
  zeta_bin = "/home/" .. USER .. "/.cache/nvim/zeta-note-linux"
else
  print("Unsupported system for zeta-note")
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.zeta_note.setup{
  cmd = {zeta_bin},
  on_attach=on_attach,
  capabilities = capabilities,
}


