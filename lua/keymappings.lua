-- Don't exit w/ CTRL-Z
vim.api.nvim_set_keymap('n', "<C-z>", "<NOP>", {noremap = true, silent = true})

-- Toggle Diagnostic VirtualText
vim.api.nvim_set_keymap('n', '<leader>tt', ':call v:lua.toggle_diagnostics()<CR>',  {noremap = true, silent = true})

-- Better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- Window Resize
vim.api.nvim_set_keymap("n", "<C-_>", "<CMD>:resize<CR>", { silent = true }) -- Make current window biggest possible
vim.api.nvim_set_keymap("n", "<C-\\>", "<C-w>=", { silent = true }) -- Reset all to equal size

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Atom style bring line down/up with CTRL-D
vim.api.nvim_set_keymap("n", "<C-D>", "mzyyp`z", {noremap = true,  silent = true})

-- Select all via <C-a>
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { silent = true })

-- Keep visual mode indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap("n", "<Space>ff", "<CMD>Telescope find_files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Space>lg", "<CMD>Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Space>gs", "<CMD>Telescope grep_string<CR><ESC>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<Space>gc", "<CMD>lua require('plugins.telescope').my_git_commits()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>km", "<CMD>Telescope keymaps<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Space>fd", "yiw<CMD>Telescope find_files<CR><C-r>+<ESC>", { noremap = true })

-- Buffers
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>q", ":bdel<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>qa", ":Bonly<CR>", {noremap = true, silent = true})

-- Don't yank on delete char
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "X", '"_X', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "x", '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "X", '"_X', { noremap = true, silent = true })

-- Yank until the end of line
vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })

-- tree toggle
vim.api.nvim_set_keymap("n", "<Leader>b", "<CMD>NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-n>", "<CMD>NvimTreeToggle<CR>", { noremap = true, silent = true })

-- LazyGit
vim.api.nvim_set_keymap("n", "<Leader>gg", "<CMD>:LazyGit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>lg", "<CMD>:LazyGit<CR>", { noremap = true, silent = true })

-- MD preview
vim.api.nvim_set_keymap("n", "<Leader>md", "<CMD>:MarkdownPreviewStop<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>r", "<CMD>:RnvimrToggle<CR>", { noremap = true, silent = true })

-- Avoid issues because of remapping <c-a> and <c-x> below
vim.cmd [[
  nnoremap <Plug>SpeedDatingFallbackUp <c-a>
  nnoremap <Plug>SpeedDatingFallbackDown <c-x>
]]

-- Quickfix
vim.api.nvim_set_keymap("n", "<Space>,", ":cn<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Space>.", ":cn<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<Space>cc", ":cclose<CR>", { silent = true })

-- VSnip
vim.cmd [[
  imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
  smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
]]

-- -F12- Space to NOP to prevent Leader issues
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })

