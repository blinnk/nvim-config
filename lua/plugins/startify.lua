bind = require('binds')
-- update session on exit

vim.g.startify_session_autoload = 0
vim.g.startify_session_persistence = true

vim.g.startify_custom_header = {
  '   ╻ ╻   ╻   ┏┳┓',
  '   ┃┏┛   ┃   ┃┃┃',
  '   ┗┛    ╹   ╹ ╹'
}

-- show only recent files and sessions
vim.g.startify_lists = {
  { type = 'sessions', header = { '  Saved Sessions' }},
  { type = 'bookmarks',  header = { '   Bookmarks' }},
  { type = 'dir',      header = { '  Recent Files' }},
}

vim.g.startify_bookmarks = {
  '~/.config',
  '~/code/projects',
  '~/code/tests',
  '~/code/tutorial',
  '~/code/courses',
}

-- save session
bind('n', '<leader>ss', function() vim.cmd('SSave') end, 'noremap', 'cmd')
-- list project
bind('n', '<leader>lp', function() vim.cmd('SClose') end, 'noremap', 'cmd')
