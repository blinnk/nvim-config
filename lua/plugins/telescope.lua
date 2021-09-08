local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case'
        },

        -- winblend         = 50,
        file_ignore_patterns = {'undodir, node_modules, Session.vim, .vscode'},

        layout_strategy = "vertical",
        layout_config = {
          horizontal = {
            mirror = false,
          },
          vertical = {
            mirror = true,
          },
          prompt_position = "top",
        },

        file_sorter      = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix    = ' 🔍 ',
        color_devicons   = false,
        sorting_strategy = "ascending",

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
        }
    },
       extensions = {
        project ={
           display_type = 'full',
           base_dirs = {
        {'~/documents/code/projects', max_depth = 4},
                '~/documents/code/notes',
                '~/documents/code/clones',
                '~/documents/code/templates',
      },
          hidden_files = true
    },
        fzf = {
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
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
require'telescope'.load_extension('project')




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
