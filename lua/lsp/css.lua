--local lspconfig = require'lspconfig'
--local configs = require'lspconfig/configs'

----Enable (broadcasting) snippet capability for completion
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true


--if not lspconfig.cssls then
--  configs.cssls = {
--  default_config ={
--    cmd = { "vscode-css-language-server", "--stdio" };
--    filetypes = { "css", "scss", "less" };
--    root_dir = ("package.json");
--    settings = {
--      css = {
--        validate = true
--      },
--      less = {
--        validate = true
--      },
--      scss = {
--        validate = true
--      }
--   };
--  };
--}
--end

---- npm install -g vscode-css-languageserver-bin
--lspconfig.cssls.setup {
--  capabilities = capabilities,
--}

local lsp_config = require('lspconfig')
local on_attach = require('lsp.on_attach')

lsp_config.cssls.setup({
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
    on_attach(client)
  end
})

