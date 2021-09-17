local lsp_config = require("lspconfig")
local lsp = vim.lsp

lsp.handlers["textDocument/publishDiagnostics"] = lsp.with(
  lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = {
      prefix = "●",
      spacing = 40,
    }
  }
)

-- " Errors in Red
-- hi LspDiagnosticsVirtualTextError guifg=#DD9999 ctermfg=Red
-- " Warnings in Yellow
-- hi LspDiagnosticsVirtualTextWarning guifg=#E2BC83 ctermfg=Yellow
-- " Info and Hints in White
-- hi LspDiagnosticsVirtualTextInformation guifg=#9D9D9D ctermfg=White
-- hi LspDiagnosticsVirtualTextHint guifg=#9D9D9D ctermfg=White
-- " Underline the offending code
-- hi LspDiagnosticsUnderlineError guifg=NONE ctermfg=NONE cterm=underline gui=underline
-- hi LspDiagnosticsUnderlineWarning guifg=NONE ctermfg=NONE cterm=underline gui=underline
-- hi LspDiagnosticsUnderlineInformation guifg=NONE ctermfg=NONE cterm=underline gui=underline
-- hi LspDiagnosticsUnderlineHint guifg=NONE ctermfg=NONE cterm=underline gui=underline

-- lua << EOF
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--  vim.lsp.diagnostic.on_publish_diagnostics, {
--    -- Enable underline, use default values
--    underline = true,
--    -- Enable virtual text only on Warning or above, override spacing to 2
--    virtual_text = {
--      spacing = 2,
--      severity_limit = "Warning",
--    },
--  }
-- )
-- EOF

-- autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

