local kommentary_config = require('kommentary.config')
require('kommentary.config').config["typescriptreact"] = nil
require('kommentary.config').use_extended_mappings()

vim.api.nvim_set_keymap("n", "<leader>cic", "<Plug>kommentary_line_increase", {})
vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", {})
vim.api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_increase", {})
vim.api.nvim_set_keymap("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {})
vim.api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {})
vim.api.nvim_set_keymap("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {})

local M = {}

function M.setup()
  kommentary_config.configure_language('typescriptreact', {
    single_line_comment_strings = {"{/*", "*/}"},
  })
  kommentary_config.configure_language('javascriptreact', {
    single_line_comment_strings = {"{/*", "*/}"},
  })
  kommentary_config.configure_language('vue', {
    single_line_comment_string  = 'auto',
    prefer_single_line_comments = false,
  })
  kommentary_config.configure_language('css', {
    single_line_comment_string  = 'auto',
    prefer_single_line_comments = true,
  })
end

return M
