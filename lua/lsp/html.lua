--local lspconfig = require'lspconfig'
--local configs = require'lspconfig/configs'

----Enable (broadcasting) snippet capability for completion
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities.textDocument.completion.completionItem.snippetSupport = true

--require'lspconfig'.html.setup {
--  capabilities = capabilities,
--}

--if not lspconfig.emmet_ls then
--  configs.emmet_ls = {
--    default_config = {
--      cmd = {'emmet-ls', '--stdio'};
--      filetypes = {'html', 'css', 'javascript', 'javascriptreact','typescript','typescriptreact'};
--      root_dir = function(fname)
--        return vim.loop.cwd()
--      end;
--      settings = {};
--    };
--  }
--end
--lspconfig.emmet_ls.setup{ capabilities = capabilities; }

local lsp_config = require('lspconfig')
local on_attach = require('lsp.on_attach')

lsp_config.html.setup({
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
    on_attach(client)
  end
})
