local apply_options = require('utils').apply_options
local apply_globals = require('utils').apply_globals

vim.cmd[[
  au TextYankPost * silent! lua require("vim.highlight").on_yank({ higroup = 'IncSearch', timeout = 300 })
]]                                               --- " Yank highlight feedback so I know wtf I grabbed

local undo_dir = os.getenv("HOME") .. '/.data/nvim/undodir'
os.execute("mkdir -p " .. undo_dir)
vim.o.undodir = undo_dir
vim.cmd 'set undofile'                           --- " Set up undofiles in a specific dir and make sure it exists
vim.cmd ('au BufEnter * set fo-=c fo-=r fo-=o')  --- " Don't bring comment to next line
vim.cmd('set shortmess+=c')                      --- " Don't pass messages to |ins-completion-menu|
vim.cmd('set iskeyword+=-')                      --- " add '-' as a keyword
vim.cmd('set complete+=kspell')                  --- " auto complete spell words
vim.cmd('set matchpairs+=<:>')                   --- " make < and > match

apply_globals({
  mapleader = " ", -- map leader to <Space>
  loaded_gzip = true,
  loaded_tar = true,
  loaded_tarPlugin = true,
  loaded_zip = true,
  loaded_zipPlugin = true,
  loaded_getscript = true,
  loaded_getscriptPlugin = true,
  loaded_vimball = true,
  loaded_vimballPlugin = true,
  loaded_matchit = true,
  loaded_matchparen = 1,
  loaded_2html_plugin = true,
  loaded_logiPat = true,
  loaded_netrw = true,
  loaded_netrwPlugin = true,
  loaded_rrhelper = true,
  loaded_netrwSettings = true,
  loaded_netrwFileHandlers = true
})

apply_options({
  compatible = false,
  termguicolors= true,
  smartindent    = true,
  clipboard = "unnamed,unnamedplus",
  -- clipboard = "unnamedplus",
  guicursor = '',
  mouse = 'nvh',
  history = 10000,
  backup = false,
  writebackup = false,
  swapfile = false,
  undolevels = 10000,
  undoreload = 10000,
  updatetime = 500,
  lazyredraw = true,
  showcmd = true,
  ruler = true,
  completeopt = { 'menuone', 'noselect', 'preview', 'noinsert' },
  scrolloff = 4,
  sidescrolloff = 4,
  incsearch = true,
  inccommand = 'nosplit',
  hlsearch = false,
  smartcase = true,
  ignorecase = true,
  gdefault = true,
  hidden = true,
  wrap = true,
  breakindent = true,
  showbreak = string.rep(" ", 3),
  linebreak = true,
  backspace = { 'indent', 'eol', 'start' },
  display = 'lastline',
  expandtab = true,
  smarttab = true,
  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
  autoindent = true,
  cindent = true,
  magic = true,
  number = true,
  relativenumber = true,
  pumheight = 16,
  signcolumn = 'yes:1',
  list = true,
  listchars = { 'tab:░░', 'trail:·' },
  fillchars = { eob = '~' },
  timeout = true,
  timeoutlen = 1000,
  ttimeoutlen = 30,
  showmode = false,
  path = vim.opt.path + { '**' },
  wildmenu = true,
  wildignore = vim.opt.wildignore + {
    '*/.git/*',
    '*/.hg/*',
    '*/.svn/*.',
    '*/.vscode/*.',
    '*/.DS_Store',
    '*/dist*/*',
    '*/target/*',
    '*/builds/*',
    '*/build/*',
    'tags',
    '*/lib/*',
    '*/flow-typed/*',
    '*/node_modules/*',
    '*.png',
    '*.PNG',
    '*.jpg',
    '*.jpeg',
    '*.JPG',
    '*.JPEG',
    '*.pdf',
    '*.exe',
    '*.o',
    '*.obj',
    '*.dll',
    '*.DS_Store',
    '*.ttf',
    '*.otf',
    '*.woff',
    '*.woff2',
    '*.eot'
  },
  encoding = 'utf-8',
  fileencoding = 'utf-8',
  autoread = true,
  splitbelow = false,
  splitright = false,
  belloff = "all",
  errorbells = false,
  showmatch = true,
  synmaxcol = 1024,
  formatoptions = 'njvcrql',
  joinspaces = false,
  foldmethod = 'manual',
  foldlevelstart = 99,
})




