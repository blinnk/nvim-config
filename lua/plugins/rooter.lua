require('rooter').setup({
  echo = true,
  patterns = {
    '.git',
    'package.json'
  },
  non_project_files = 'current',
})
