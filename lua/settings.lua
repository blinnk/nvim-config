-- vim.wo.numberwidth = 4
-- vim.o.hidden          = true                        --- Required to keep multiple buffers open multiple buffers
-- vim.o.encoding        = "utf-8"                     --- The encoding displayed
-- vim.o.fileencoding    = "utf-8"                     --- The encoding written to file
-- vim.o.splitright      = true                        --- Vertical splits will automatically be to the right
-- vim.o.updatetime      = 100                         --- Faster completion
-- vim.o.timeoutlen      = 400                         --- Faster completion
-- vim.o.clipboard       = "unnamed,unnamedplus"       --- Copy-paste between vim and everything else
-- vim.o.mouse           = "a"                         --- Enable mouse
-- vim.o.smartcase       = true                        --- Uses case in search
-- vim.o.smarttab        = true                        --- Makes tabbing smarter will realize you have 2 vs 4
-- vim.bo.smartindent    = true                        --- Makes indenting smart
-- vim.bo.shiftwidth     = 2                           --- Change a number of space characeters inseted for indentation
-- vim.o.shiftwidth      = 2                           --- Change a number of space characeters inseted for indentation
-- vim.o.showtabline     = 2                           --- Always show tabs
-- vim.o.tabstop         = 2                           --- Insert 2 spaces for a tab
-- vim.bo.tabstop        = 2                           --- Insert 2 spaces for a tab
-- vim.o.softtabstop     = 2                           --- Insert 2 spaces for a tab
-- vim.bo.softtabstop    = 2                           --- Insert 2 spaces for a tab
-- vim.o.showmode        = false                       --- Don't show things like -- INSERT -- anymore
-- vim.o.autoindent      = true                        --- Good auto indent
-- vim.o.errorbells      = false                       --- Disables sound effect for errors
-- vim.wo.number         = true                        --- Shows current line number
-- vim.wo.relativenumber = false                        --- Enables relative number
-- vim.o.guicursor       = ''
-- vim.wo.wrap           = false                       --- Display long lines as just one line
-- vim.o.backup          = false                       --- Recommended by coc
-- vim.o.writebackup     = false                       --- Recommended by coc
-- vim.o.swapfile        = false                       --- Recommended by coc
-- vim.o.emoji           = false                       --- Fix emoji display
-- vim.o.incsearch       = true                        --- Start searching before pressing enter
-- vim.o.conceallevel    = 0                           --- Show `` in markdown files
-- vim.o.backspace       = "indent,eol,start"          --- Making sure backspace works
-- vim.o.lazyredraw      = true                        --- Makes macros faster & prevent errors in complicated mappings
-- vim.o.wildignore      = "*node_modules/**"          --- Don't search inside Node.js modules (works for gutentag)
-- vim.o.scrolloff       = 4                           --- Always keep space when scrolling to bottom/top edge
-- vim.o.viminfo         = "'1000"                     --- Increase the size of file history
-- vim.o.termguicolors   = true                        --- Correct terminal colors
-- vim.o.signcolumn      = "yes"                        --- Add extra sign column next to line number
-- vim.o.completeopt     = "menuone,noselect"          --- Better autocompletion
-- vim.o.foldtext        = "CustomFold()"              --- Emit custom function for foldtext
-- vim.g.mapleader       = " "                         --- Map leader key
-- vim.g.smartcase       = true


-- vim.cmd('set nocompatible')
-- vim.cmd('set nohlsearch')
-- vim.cmd('filetype plugin on') --- " Enables plugin & indent
-- vim.cmd('filetype indent on') --- " Enables plugin & indent
-- vim.cmd('set shortmess+=c')          --- " Don't pass messages to |ins-completion-menu|
-- vim.cmd ('au BufEnter * set fo-=c fo-=r fo-=o')
-- vim.cmd('set expandtab')             --- Converts tab to spaces
-- vim.cmd('set completeopt=menuone,noselect')
-- vim.cmd('set fillchars=fold:\\ ')

local apply_options = require('utils').apply_options
local apply_globals = require('utils').apply_globals
local add = require('utils').add
local concat = require('utils').concat

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
  loaded_2html_plugin = true,
  loaded_logiPat = true,
  loaded_netrw = true,
  loaded_netrwPlugin = true,
  loaded_rrhelper = true,
  loaded_netrwSettings = true,
  loaded_netrwFileHandlers = true
})

apply_options({
  smartindent    = true,
  compatible = false,
  clipboard = "unnamed,unnamedplus",
  guicursor = '',
  -- mouse = 'nvh',
  mouse = 'a',
  history = 10000,
  backup = false,
  writebackup = false,
  swapfile = false,
  undolevels = 1000,
  undoreload = 10000,
  updatetime = 500,
  lazyredraw = true,
  showcmd = true,
  cmdheight = 1,
  ruler = true,
  -- shortmess = vim.opt.shortmess .. 'c',
  completeopt = { 'menuone', 'noselect' },
  -- 'noinsert'
  scrolloff = 4,
  sidescrolloff = 4,
  incsearch = true,
  inccommand = 'nosplit',
  hlsearch = false,
  smartcase = true,
  ignorecase = true,
  gdefault = true,
  hidden = true,
  wrap = false,
  backspace = { 'indent', 'eol', 'start' },
  display = 'lastline',
  expandtab = true,
  smarttab = true,
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  autoindent = true,
  magic = true,
  number = true,
  relativenumber = true,
  pumblend = 16,
  -- winblend = 16,
  pumheight = 14,
  signcolumn = 'yes:1',
  list = true,
  listchars = { 'tab:░░', 'trail:·' },
  fillchars = { eob = '~' },
  timeout = true,
  timeoutlen = 1000,
  ttimeoutlen = 50,
  showtabline = 2,
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
  splitbelow = true,
  splitright = true,
  visualbell = true,
  errorbells = false,
  showmatch = true,
  colorcolumn = '120',
  synmaxcol = 1024,
  formatoptions = 'njvcrql',
  joinspaces = false,
  foldmethod = 'expr',
  foldexpr = 'nvim_treesitter#foldexpr()',
  foldlevelstart = 99,
})

vim.cmd[[
au TextYankPost * silent! lua require("vim.highlight").on_yank({ higroup = 'IncSearch', timeout = 300 })
]]


-- set up undofiles in a specific dir and make sure it exists
local undo_dir = os.getenv("HOME") .. '/.data/nvim/undodir'
os.execute("mkdir -p " .. undo_dir)
vim.o.undodir = undo_dir
vim.cmd 'set undofile'

vim.cmd ('au BufEnter * set fo-=c fo-=r fo-=o')
