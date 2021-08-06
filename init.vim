source $HOME/.config/nvim/vim-plug/plugins.vim

source $HOME/.config/nvim/general/colorscheme.vim

source $HOME/.config/nvim/general/config.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/general/lsp.vim

source $HOME/.config/nvim/vim-plug/prettier.vim
source $HOME/.config/nvim/vim-plug/markdown-preview-nvim.vim
source $HOME/.config/nvim/vim-plug/tree.vim


luafile $HOME/.config/nvim/lua/init.lua

" set
let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
