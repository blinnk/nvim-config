local actions = require('telescope.actions')
local action_state = require "telescope.actions.state"

local set_prompt_to_entry_value = function(prompt_bufnr)
  local entry = action_state.get_selected_entry()
  if not entry or not type(entry) == "table" then
    return
  end

  action_state.get_current_picker(prompt_bufnr):reset_prompt(entry.ordinal)
end

require('telescope').setup {
    defaults = {
        -- winblend         = 0,
        prompt_prefix    = ' > ',
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case'
        },
        file_ignore_patterns = {'undodir, node_modules, Session.vim, .vscode, tags'},

        layout_strategy = "horizontal",
        layout_config = {
            width = 0.95,
            height = 0.85,
          prompt_position = "top",
          horizontal = {
            mirror = false,
            preview_width = function(_, cols, _)
          if cols > 200 then
            return math.floor(cols * 0.4)
          else
            return math.floor(cols * 0.6)
          end
        end,
          },
          vertical = {
              width = 0.9,
              height = 0.95,
            -- mirror = true,
          },
          flex = {
              preview_width = 0.9,
            }
        },

        color_devicons   = false,
        sorting_strategy = "descending",
        scroll_strategy = "cycle",
        selection_strategy ="reset",

        file_sorter      = require('telescope.sorters').get_fzy_sorter,
        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.send_to_qflist,
                ["<C-s>"] = actions.cycle_previewers_next,
                ["<C-a>"] = actions.cycle_previewers_prev,
            },
            n = {
                ["<C-s>"] = actions.cycle_previewers_next,
                ["<C-a>"] = actions.cycle_previewers_prev,
            }
        },
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    },

      extensions = {
      fzy_native = {
          override_generic_sorter = true,
          override_file_sorter = true,
        },
        project ={
           display_type = 'full',
           base_dirs = {
        {'~/documents/code', max_depth = 4},
      },
          hidden_files = true
    },
        -- fzf = {
        --     override_generic_sorter = false,
        --     override_file_sorter = true,
        --     case_mode = "smart_case",
        -- }
    }
}
vim.api.nvim_set_keymap(
    'n',
    '<C-p>',
    ":lua require'telescope'.extensions.project.project{}<CR>",
    {noremap = true, silent = true}
)
require('telescope').load_extension('fzf')
require('telescope').load_extension('ultisnips')
require('telescope').load_extension('project')


-- Implement delta as previewer for diffs
local previewers = require('telescope.previewers')
local builtin    = require('telescope.builtin')
local M = {}

local delta = previewers.new_termopen_previewer {
  get_command = function(entry)
    return { 'git', '-c', 'core.pager=delta', '-c', 'delta.side-by-side=false', 'diff', entry.value .. '^!' }
  end
}

M.my_git_commits = function(opts)
  opts = opts or {}
  opts.previewer = {
    delta,
    previewers.git_commit_message.new(opts),
    previewers.git_commit_diff_as_was.new(opts),
  }

  builtin.git_commits(opts)
end

M.my_git_bcommits = function(opts)
  opts = opts or {}
  opts.previewer = {
    delta,
    previewers.git_commit_message.new(opts),
    previewers.git_commit_diff_as_was.new(opts),
  }

  builtin.git_bcommits(opts)
end

return M
