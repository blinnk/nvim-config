local lsp_config = require('lspconfig')
local on_attach = require('lsp.on_attach')

lsp_config.tsserver.setup({
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false

    require'lsp_signature'.on_attach({
      bind = false, -- This is mandatory, otherwise border config won't get registered.
                   -- If you want to hook lspsaga or other signature handler, pls set to false
      doc_lines = 2, -- will show two lines of comment/doc(if there are more than two lines in doc, will be truncated);
                     -- set to 0 if you DO NOT want any API comments be shown
                     -- This setting only take effect in insert mode, it does not affect signature help in normal
                     -- mode, 10 by default

      floating_window = false, -- show hint in a floating window, set to false for virtual text only mode
      fix_pos = false,  -- set to true, the floating window will not auto-close until finish all parameters
      hint_enable = true, -- virtual hint enable
      -- hint_prefix = "🐼 ",  -- Panda for parameter
      hint_scheme = "String",
      -- use_lspsaga = true,  -- set to true if you want to use lspsaga popup
      hi_parameter = "Search", -- how your parameter will be highlight
      max_height = 12, -- max height of signature floating_window, if content is more than max_height, you can scroll down
                       -- to view the hiding contents
      max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
      handler_opts = {
        border = "none"   -- double, single, shadow, none
      },
    })

    local ts_utils = require("nvim-lsp-ts-utils")

    ts_utils.setup {
        debug = false,
        disable_commands = false,
        enable_import_on_completion = false,
        import_all_timeout = 5000, -- ms
        import_all_priorities = {
                buffers = 4, -- loaded buffer names
                buffer_content = 3, -- loaded buffer content
                local_files = 2, -- git files or files with relative path markers
                same_file = 1, -- add to existing import statement
            },
            import_all_scan_buffers = 100,
            import_all_select_source = false,

        -- eslint
        eslint_enable_code_actions = true,
        eslint_enable_disable_comments = true,
        eslint_bin = 'eslint_d',
        eslint_config_fallback = nil,
        eslint_enable_diagnostics = true,

        -- formatting
        enable_formatting = true,
        formatter = 'prettier',
        formatter_config_fallback = nil,

        -- parentheses completion
        complete_parens = false,
        signature_help_in_parens = false,

        -- update imports on file move
        update_imports_on_move = true,
        require_confirmation_on_move = true,
        watch_dir = nil,
    }

    ts_utils.setup_client(client)
    on_attach(client)
  end
})



    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>co", ":TSLspOrganize<CR>",   { silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>fix", ":TSLspFixCurrent<CR>",         { silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>cR", ":TSLspRenameFile<CR>", { silent = true })
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<Leader>ci", ":TSLspImportAll<CR>",  { silent = true })
