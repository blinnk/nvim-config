
-- require('formatter').setup({
--   logging = false,
--   filetype = {
--     javascript = {
--         -- prettier
--        function()
--           return {
--             exe = "prettier",
--             args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
--             stdin = true
--           }
--         end
--     },
--     css = {
--         -- prettier
--        function()
--           return {
--             exe = "prettier",
--             args = {
--             "--stdin-filepath",
--             vim.api.nvim_buf_get_name(0),
--             '--single-quote',
--           },
--             stdin = true
--           }
--         end
--     },
--     html = {
--         -- prettier
--        function()
--           return {
--             exe = "prettier",
--             args = {
--             "--stdin-filepath",
--             vim.api.nvim_buf_get_name(0),
--             '--single-quote',
--             '--html-whitespace-sensitivity=css',
--           },
--             stdin = true
--           }
--         end
--     },
--   }
-- })

-- vim.api.nvim_exec([[
-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWritePost *.js,*.css,*.scss,*.html,*.jsx FormatWrite
-- augroup END
-- ]], true)
-- I will use this until formatting from LSP is stable.

local prettier = function()
  return {
    exe = "prettier",
    args = {
      "--stdin-filepath",
      vim.api.nvim_buf_get_name(0),
      "--single-quote"
    },
    stdin = true
  }
end

local rustfmt = function()
  return {
    exe = "rustfmt",
    args = {
      "--emit=stdout"
    },
    stdin = true
  }
end

require('formatter').setup({
  logging = false,
  filetype = {
    javascript = {
      prettier
    },
    javascriptreact = {
      prettier
    },
    typescript = {
      prettier
    },
    typescriptreact = {
      prettier
    },
    css = {
      prettier
    },
    less = {
      prettier
    },
    sass = {
      prettier
    },
    scss = {
      prettier
    },
    json = {
      prettier
    },
    graphql = {
      prettier
    },
    markdown = {
      prettier
    },
    vue = {
      prettier
    },
    yaml = {
      prettier
    },
    html = {
      prettier
    },
    rust = {
      rustfmt
    }
  }
})


-- vim.api.nvim_command [[augroup Format]]
-- vim.api.nvim_command [[autocmd! * <buffer>]]
-- vim.api.nvim_command [[autocmd BufWritePost <buffer> FormatWrite]]
-- vim.api.nvim_command [[augroup END]]

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.rs FormatWrite
augroup END
]], true)
