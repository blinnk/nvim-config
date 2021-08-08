
vim.g.startify_session_autoload = 0
vim.g.startify_session_persistence = 1
vim.g.startify_padding_left = 12
vim.g.startify_update_oldfiles = 1
vim.g.startify_session_delete_buffers = 1
-- vim.g.startify_session_remove_lines = {'setlocal', 'winheight'}
vim.g.startify_session_sort = 0

vim.g.startify_custom_header = {
  '                     ',
  '                     ',
  '                     ',
  '                     ',
  '                     ',
  '                     ',
  '                     ',
  '                     ',
  '                     ',
  '      n ╻ ╻   ╻   ┏┳┓',
  '      e ┃┏┛   ┃   ┃┃┃',
  '      o ┗┛    ╹   ╹ ╹'
}

-- show only recent files and sessions
vim.g.startify_lists = {
  { type = 'sessions', header   = { '            Saved Sessions' }},
  { type = 'bookmarks',  header = { '            Bookmarks' }},
  -- { type = 'dir', header        = { '            Recent Files' }},
  { type = 'files', header      = { '            MRU' }},
}

vim.g.startify_bookmarks = {
  '~/.config/nvim',
  '~/code/projects',
  '~/code/tests',
  '~/code/tutorial',
  '~/code/courses',
}

vim.cmd [[
function! StartifyEntryFormat()
      return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
]]

if('nvim') then
  vim.cmd [[autocmd TabNewEntered * Startify]]
else
  vim.cmd [[
  autocmd BufWinEnter *
     if !exists('t:startify_new_tab')
          && empty(expand('%'))
             && empty(&l:buftype)
             && &l:modifiable |
           let t:startify_new_tab = 1 |
           Startify |
      ]]
end
